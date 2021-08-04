import socket
import psutil
import os
import time

def send_msg(sock_cli, data):
    sock_cli.send(data)

sock_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

sock_server.bind(("0.0.0.0", 8600))

sock_server.listen(5)

while True:
    sock_cli, addr_cli = sock_server.accept()

    load1, load5, load15 = psutil.getloadavg()
    cpu_usage = (load15/os.cpu_count()) * 100
    memory_usage = psutil.virtual_memory()[2]

    if cpu_usage < 80 and memory_usage < 80:
        send_msg(sock_cli, bytes("", encoding='UTF-8'))
    else:
        time.sleep(2)

    sock_cli.close()