FROM python:3.7-alpine

RUN apk add --no-cache bash

ADD request.log /mnt/request.log
ADD service.sh /mnt/service.sh

RUN touch -p /mnt/example1.txt
RUN touch -p /mnt/example2.txt
RUN touch -p /mnt/example3.txt

RUN chmod 755 /mnt/example1.txt
RUN chmod 600 /mnt/example2.txt
RUN chmod 777 /mnt/example3.txt

CMD ["/bin/bash"]
