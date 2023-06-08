FROM python:3.7-alpine


RUN touch /mnt/example1.txt
RUN touch /mnt/example2.txt
RUN touch /mnt/example3.txt

ADD imagen.sh /etc/int.d/imagen.sh
ADD request.log /mnt/request.log


RUN chmod 755 /mnt/example1.txt
RUN chmod 600 /mnt/example2.txt
RUN chmod 777 /mnt/example3-txt

RUN apk add --no-cache bash

CMD ["/bin/bash"]