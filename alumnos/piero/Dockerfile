FROM python:3.7-alpine


RUN mkdir -p /mnt/
WORKDIR /mnt/

RUN touch /mnt/example1.txt
RUN touch /mnt/example2.txt
RUN touch /mnt/example3.txt

ADD request.log /mnt/
ADD service.sh /etc/init.d/service.sh

RUN chmod 755 /mnt/example1.txt
RUN chmod 600 /mnt/example2.txt
RUN chmod 777 /mnt/example3.txt

RUN apk add --no-cache bash
CMD ["/bin/sh"]