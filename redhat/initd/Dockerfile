FROM python:3.7-alpine

WORKDIR /app

# add requeriments and app in workdir
ADD requirements.txt /app

RUN apk add --no-cache bash

RUN pip install -r requirements.txt

ADD service.sh /etc/init.d/service

RUN chmod 755 /etc/init.d/service.sh && \

CMD ["/bin/bash"]
