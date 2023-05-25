FROM python:3.7-alpine

WORKDIR /app

# add requeriments and app in workdir
ADD requirements.txt /app
ADD app.py /app
ADD service.sh /etc/init.d/service.sh

RUN apk add --no-cache bash

RUN pip install -r requirements.txt

RUN chmod 755 /etc/init.d/service.sh && \
    chmod 755 /app/app.py

CMD ["/bin/bash"]
