import socket
import sys

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

sock.connect((str(sys.argv[1]), int(sys.argv[2])))
sock.settimeout(1.0)
try:
    sock.recv(1024)
    sys.exit(0)
except Exception as e:
    sys.exit(1)