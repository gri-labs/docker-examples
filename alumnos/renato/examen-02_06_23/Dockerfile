FROM python:3.7-alpine

WORKDIR /app

RUN touch  /mnt/example1.txt
RUN touch  /mnt/example2.txt
RUN touch  /mnt/example3.txt

RUN chmod 755 /mnt/example1.txt
RUN chmod 600 /mnt/example2.txt
RUN chmod 777 /mnt/example3.txt

ADD request.log /mnt/

ADD service.sh /etc/init.d/service.sh

RUN chmod 755 /etc/init.d/service.sh

# Next lines are needed if I want to use a terminal in my IDE
RUN apk add --no-cache bash
CMD ["/bin/bash"]
