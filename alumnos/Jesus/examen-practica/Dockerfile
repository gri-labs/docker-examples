FROM python:3.7-alpine

LABEL authors="Jesus"

WORKDIR /

RUN touch /mnt/example1.txt
RUN touch /mnt/example2.txt
RUN touch /mnt/example3.txt
ADD request.log /mnt/
ADD service.sh /etc/init.d/service.sh
RUN apk add --no-cache bash

RUN chmod 755 /mnt/example1.txt && \
    chmod 600 /mnt/example2.txt && \
    chmod 777 /mnt/example3.txt

CMD ["/bin/bash"]
