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

    weight += rescale(100 - cpu_usage)
    weight += rescale(100 - memory_usage)

    send_msg(sock_cli, bytes(str(weight), encoding='UTF-8'))

    sock_cli.close()
