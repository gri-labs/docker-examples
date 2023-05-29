FROM python:3.7-alpine

WORKDIR /app

# add requeriments and app in workdir
ADD requirements.txt /app
ADD app.py /app

RUN apk add --no-cache bash

RUN pip install -r requirements.txt

RUN chmod 755 /app/app.py

CMD ["python", "/app/app.py"]
