from threading import Thread
import socket
import psutil
import os
import time


current_data_receive = 0
start_data_receive = 0
current_data_time_counter = 0
current_bandwith = 0


def send_msg(sock_cli, data):
    sock_cli.send(data)


def get_cpu_usage():
    load1, load5, load15 = os.getloadavg()
    return (load15/os.cpu_count()) * 100


def get_memory_usage():
    return psutil.virtual_memory()[2]


def convert_to_mbyte(value):
    return (value/1024.)/1024.


def get_interface():
    if "INTERFACE" in os.environ and os.environ['INTERFACE'] in psutil.net_io_counters(pernic=True):
        return psutil.net_io_counters(pernic=True)[os.environ['INTERFACE']]

    return psutil.net_io_counters()


def count_current_bandwith():
    value_data_receive = current_data_receive - \
        start_data_receive if current_data_receive > start_data_receive else 0.0
    return convert_to_mbyte(
        value_data_receive / current_data_time_counter
    )


def get_current_bandwith():
    if current_bandwith:
        return current_bandwith

    return count_current_bandwith()


def rescale(value, priority_parameter=""):
    priority = 5

    if priority_parameter in os.environ:
        priority = float(os.environ[priority_parameter])

    return round((value / 100) * priority)


def thread_bandwith_counter(threadname):
    global current_data_receive
    global start_data_receive
    global current_data_time_counter
    global current_bandwith

    start_data_receive = get_interface().bytes_recv

    while True:
        current_data_time_counter += 1
        current_data_receive = get_interface().bytes_recv

        if current_data_time_counter >= 60:
            current_bandwith = count_current_bandwith()
            start_data_receive = get_interface().bytes_recv
            current_data_time_counter = 0

        time.sleep(1.0)


if __name__ == "__main__":
    sock_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    sock_server.bind(("0.0.0.0", 8600))

    sock_server.listen(5)

    thread1 = Thread(target=thread_bandwith_counter, args=("Thread1",))
    thread1.start()

    while True:
        sock_cli, addr_cli = sock_server.accept()
        weight = 0
        memory_usage = get_memory_usage()
        cpu_usage = get_cpu_usage()
        current_bandwith = get_current_bandwith()
        bandwith_capacity = float(os.environ['BANDWITH_CAPACITY'])

        weight += rescale(100 - cpu_usage, "CPU_PRIORITY")
        weight += rescale(100 - memory_usage, "MEMORY_PRIORITY")
        weight += rescale(
            (bandwith_capacity - current_bandwith) * 100.0 / bandwith_capacity,
            "BANDWITH_PRIORITY"
        )

        send_msg(sock_cli, bytes(str(weight), encoding='UTF-8'))

        sock_cli.close()

    thread1.join()
