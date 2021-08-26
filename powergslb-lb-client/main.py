import socket
import psutil
import os
import time


def send_msg(sock_cli, data):
    sock_cli.send(data)


def get_cpu_usage():
    load1, load5, load15 = os.getloadavg()
    return (load15/os.cpu_count()) * 100


def get_memory_usage():
    return psutil.virtual_memory()[2]

def convert_to_mbyte(value):
    return value/1024./1024.

def get_current_bandwith():
    old_value = psutil.net_io_counters().bytes_sent + psutil.net_io_counters().bytes_recv

    time.sleep(1)

    new_value = psutil.net_io_counters().bytes_sent + psutil.net_io_counters().bytes_recv

    return convert_to_mbyte(new_value - old_value if new_value > old_value else 0.0)


def rescale(value):
    return round((value / 100) * 5)


sock_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

sock_server.bind(("0.0.0.0", 8600))

sock_server.listen(5)

while True:
    sock_cli, addr_cli = sock_server.accept()

    weight = 0
    memory_usage = get_memory_usage()
    cpu_usage = get_cpu_usage()
    current_bandwith = get_current_bandwith()
    bandwith_capacity = float(os.environ['BANDWITH_CAPACITY'])

    weight += rescale(100 - cpu_usage)
    weight += rescale(100 - memory_usage)
    weight += rescale(
        (bandwith_capacity - current_bandwith) * 100.0 / bandwith_capacity
    )

    send_msg(sock_cli, bytes(str(weight), encoding='UTF-8'))

    sock_cli.close()
