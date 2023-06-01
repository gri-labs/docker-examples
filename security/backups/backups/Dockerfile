FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    mysql-client \
    && rm -rf /var/lib/apt/lists/*

COPY  /usr/local/bin/backup.sh
