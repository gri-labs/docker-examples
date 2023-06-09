FROM python:3.8.5

WORKDIR /app

ADD requirements.txt /app
ADD app.py /app

#RUN apk add --no-cache bash

RUN chmod 755 /app/app.py

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
