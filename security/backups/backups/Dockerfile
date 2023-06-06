FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    mysql-client \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/*

ADD backup.sh /usr/local/bin/backup.sh
RUN chmod 755 /usr/local/bin/backup.sh

ENTRYPOINT ["sleep", "infinity"]
