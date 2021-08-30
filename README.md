# PowerGSLB - PowerDNS Remote GSLB Backend

PowerGSLB is a simple DNS based Global Server Load Balancing (GSLB) solution.


## Table of Contents

- [PowerGSLB - PowerDNS Remote GSLB Backend](#powergslb---powerdns-remote-gslb-backend)
  - [Table of Contents](#table-of-contents)
  - [Main features](#main-features)
  - [Database diagram](#database-diagram)
  - [Class diagram](#class-diagram)
  - [Web based administration interface](#web-based-administration-interface)
  - [Installation on CentOS 7](#installation-on-centos-7)
    - [Setup PowerGSLB and PowerDNS](#setup-powergslb-and-powerdns)
    - [Setup MariaDB](#setup-mariadb)
    - [Start services](#start-services)
    - [Test PowerGSLB](#test-powergslb)
    - [Web based administration interface](#web-based-administration-interface-1)
  - [Health checks](#health-checks)
    - [Mandatory parameters](#mandatory-parameters)
    - [Exec parameters](#exec-parameters)
    - [ICMP parameters](#icmp-parameters)
    - [HTTP parameters](#http-parameters)
    - [TCP parameters](#tcp-parameters)
  - [Building PowerGSLB RPM packages](#building-powergslb-rpm-packages)
  - [Using PowerGSLB Docker image](#using-powergslb-docker-image)
  - [Building PowerGSLB Docker image](#building-powergslb-docker-image)
  - [Using PowerGSLB LB Client](#using-powergslb-lb-client)


## Main features

* Quick installation and setup
* Written in Python 2.7
* Built as PowerDNS Authoritative Server [Remote Backend](https://doc.powerdns.com/3/authoritative/backend-remote/)
* Web based administration interface using [w2ui](http://w2ui.com/)
* HTTPS support for the web server
* DNS GSLB configuration stored in a MySQL / MariaDB database
* Master-Slave DNS GSLB using native MySQL / MariaDB [replication](https://dev.mysql.com/doc/refman/5.5/en/replication.html)
* Multi-Master DNS GSLB using native MySQL / MariaDB [Galera Cluster](http://galeracluster.com/)
* Modular architecture
* Multithreaded architecture
* Systemd status and watchdog support
* Extendable health checks:
    * ICMP ping
    * TCP connect
    * HTTP request
    * Arbitrary command execution
* Fallback if all the checks failed
* Weighted (priority) records
* Per record client IP / subnet persistence
* DNS GSLB views support
* All-in-one Docker image


## Database diagram

![](https://github.com/kuuhaku86/powergslb/blob/master/images/database.png?raw=true)


## Class diagram

![](https://github.com/kuuhaku86/powergslb/blob/master/images/class-diagram.png?raw=true)


## Web based administration interface

Status grid
![](https://github.com/kuuhaku86/powergslb/blob/master/images/web-status.png?raw=true)

Advanced search
![](https://github.com/kuuhaku86/powergslb/blob/master/images/web-search.png?raw=true)

Add new record
![](https://github.com/kuuhaku86/powergslb/blob/master/images/web-form.png?raw=true)

[More images](https://github.com/kuuhaku86/powergslb/tree/master/images)


## Installation on CentOS 7

### Setup PowerGSLB and PowerDNS

```shell
yum -y install epel-release
yum -y update
yum -y install python2-pip

pip install pyping

VERSION=1.7.5
yum -y --setopt=tsflags= install \
    "https://github.com/kuuhaku86/powergslb/releases/download/$VERSION/powergslb-$VERSION-1.el7.noarch.rpm" \
    "https://github.com/kuuhaku86/powergslb/releases/download/$VERSION/powergslb-admin-$VERSION-1.el7.noarch.rpm" \
    "https://github.com/kuuhaku86/powergslb/releases/download/$VERSION/powergslb-pdns-$VERSION-1.el7.noarch.rpm"

sed -i 's/^password = .*/password = your-database-password-here/g' /etc/powergslb/powergslb.conf

cp /etc/pdns/pdns.conf /etc/pdns/pdns.conf~
cp "/usr/share/doc/powergslb-pdns-$VERSION/pdns/pdns.conf" /etc/pdns/pdns.conf

echo -e '#!/usr/bin/env python2.7\n' > /etc/powergslb/load-balancing-check
cat << EOF >> /etc/powergslb/load-balancing-check

import socket
import sys
import mysql.connector
import logging

ADDRESS = str(sys.argv[1])
PORT = int(sys.argv[2])
DB_ADDRESS = "127.0.0.1"
DB_PORT = 3306

operation = """
    UPDATE records
    SET weight = %s
    WHERE records.content_monitor_id = (
        SELECT contents_monitors.id 
        FROM contents_monitors
        JOIN monitors ON contents_monitors.monitor_id = monitors.id
        JOIN contents ON contents_monitors.content_id = contents.id
        WHERE monitors.monitor = "Load Balancing Check"
        AND contents.content = %s
        LIMIT 1
    )
"""

try: 
    logging.basicConfig(filename='/var/log/load-balancing.log', filemode='a', format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')

    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    sock.connect((ADDRESS, PORT))

    data = sock.recv(1024)
    data = data.decode('UTF-8')
    data = int(float(data))

    connection = mysql.connector.connect(
        host=DB_ADDRESS,
        port=DB_PORT,
        user="powergslb",
        database="powergslb",
        password="your-database-password-here")

    cursor = connection.cursor()

    cursor.execute(operation, (data, ADDRESS, ))

    connection.commit()

    cursor.close()
except Exception:
    logging.exception("message")
EOF

sed -i "s/your-database-password-here/your-database-password-here/g" /etc/powergslb/load-balancing-check

chmod 777 /etc/powergslb/load-balancing-check
```

### Setup MariaDB

```shell
yum -y install mariadb-server

sed -i '/\[mysqld\]/a bind-address=127.0.0.1\ncharacter_set_server=utf8' /etc/my.cnf.d/server.cnf

systemctl enable mariadb.service
systemctl start mariadb.service
systemctl status mariadb.service

mysql_secure_installation

VERSION=1.7.5
mysql -p << EOF
CREATE DATABASE powergslb;
GRANT ALL ON powergslb.* TO powergslb@localhost IDENTIFIED BY 'your-database-password-here';
USE powergslb;
source /usr/share/doc/powergslb-$VERSION/database/scheme.sql
source /usr/share/doc/powergslb-$VERSION/database/data.sql
EOF
```

### Start services

```shell
systemctl enable powergslb.service pdns.service
systemctl start powergslb.service pdns.service
systemctl status powergslb.service pdns.service
```

### Test PowerGSLB

```shell
yum -y install bind-utils

dig @127.0.0.1 example.com SOA
dig @127.0.0.1 example.com A
dig @127.0.0.1 example.com AAAA
dig @127.0.0.1 example.com ANY
```

### Web based administration interface

Open URL https://SERVER/admin/.

* Default username: admin
* Default password: admin

## Health checks

Health checks are configured in the "Monitors" sidebar section in JSON format.

Supported check types:

| type | description |
|---|---|
| exec | arbitrary command execution |
| icmp | ICMP ping |
| http | HTTP request |
| tcp | TCP connect |

### Mandatory parameters

General parameters for all checks:

| parameter | description |
|---|---|
| type | check type |
| interval | interval between checks |
| timeout | check timeout |
| fall | number of failed checks to disable record |
| rise | number of successful checks to enable record |

### Exec parameters

| parameter | description |
|---|---|
| type | exec |
| args | command to execute and arguments |

Example:
```
{"type": "exec", "args": ["/etc/powergslb/powergslb-check", "%(content)s"], "interval": 3, "timeout": 1, "fall": 3, "rise": 5}
```

### ICMP parameters

| parameter | description |
|---|---|
| type | icmp |
| ip | endpoint IP address |

Example:
```
{"type": "icmp", "ip": "%(content)s", "interval": 3, "timeout": 1, "fall": 3, "rise": 5}
```

### HTTP parameters

| parameter | description |
|---|---|
| type | http |
| url | endpoint URL |

Example:
```
{"type": "http", "url": "http://%(content)s/status", "interval": 3, "timeout": 1, "fall": 3, "rise": 5}
```

### TCP parameters

| parameter | description |
|---|---|
| type | tcp |
| ip | endpoint IP address |
| port | endpoint port number |

Example:
```
{"type": "tcp", "ip": "%(content)s", "port": 80, "interval": 3, "timeout": 1, "fall": 3, "rise": 5}
```

## Building PowerGSLB RPM packages

You should always create RPM packages in a clean environment and preferably on a separate machine!

Please read [How to create an RPM package](https://fedoraproject.org/wiki/How_to_create_an_RPM_package).
```shell
yum -y update
yum -y install @Development\ Tools

VERSION=1.7.5
curl "https://codeload.github.com/kuuhaku86/powergslb/tar.gz/$VERSION" -o "powergslb-$VERSION.tar.gz"
rpmbuild -tb --define "version $VERSION" "powergslb-$VERSION.tar.gz"
```

Upon successful completion you will have three packages
```
~/rpmbuild/RPMS/noarch/powergslb-$VERSION-1.el7.noarch.rpm
~/rpmbuild/RPMS/noarch/powergslb-admin-$VERSION-1.el7.noarch.rpm
~/rpmbuild/RPMS/noarch/powergslb-pdns-$VERSION-1.el7.noarch.rpm
```


## Using PowerGSLB Docker image

For quick setup, you can pull all-in-one Docker image from docker.io.

```
VERSION=1.7.5

docker pull docker.io/kuuhaku86/powergslb:"$VERSION"

docker run -itd --name powergslb --hostname powergslb \
    -p 53:53/tcp -p 53:53/udp -p 443:443/tcp \
    --tmpfs /run --tmpfs /tmp -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
    kuuhaku86/powergslb:"$VERSION"

docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' powergslb

docker exec -it powergslb bash

docker stop powergslb
```

For systemd to run in Docker container the following SELinux boolean should be enabled.
```
semanage boolean --modify --on container_manage_cgroup
```


## Building PowerGSLB Docker image

To create an all-in-one Docker image.

```
VERSION=1.7.5

docker build -f docker/Dockerfile --build-arg VERSION="$VERSION" \
    --force-rm --no-cache -t powergslb:"$VERSION" https://github.com/kuuhaku86/powergslb.git
```

## Using PowerGSLB LB Client

Run with docker

```
VERSION=1.7.5

docker run -itd --net=host -e INTERFACE=[Your Internet Interface] \
    -e BANDWITH_CAPACITY=[Your Internet Bandwith] --name powergslb-lb-client \
    docker.io/kuuhaku86/powergslb-lb-client:"$VERSION"
  
# Use this for testing (Change 1G with memory that you want to be occupied)
stress -m 1 --vm-bytes 1G --vm-keep
```