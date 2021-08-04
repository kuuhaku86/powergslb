# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

RUN pip install psutil

EXPOSE 8600/tcp
EXPOSE 8600/udp

COPY main.py main.py

CMD [ "python3", "main.py"]