FROM python:3.7-alpine
WORKDIR /mnt

RUN touch example1.txt /mnt/
RUN touch example2.txt /mnt/
RUN touch example3.txt /mnt/

ADD service.sh /etc/init.d/service.sh
ADD request.log /mnt/

RUN chmod 755 /mnt/example1.txt
RUN chmod 600 /mnt/example2.txt
RUN chmod 777 /mnt/example3.txt
RUN chmod 755 /etc/init.d/service.sh



RUN apk add --no-cache bash
CMD ["/bin/bash"]

