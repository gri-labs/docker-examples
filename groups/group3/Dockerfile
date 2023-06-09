FROM python:3.8.5

WORKDIR /app

ADD requirements.txt /app
ADD app.py /app

#RUN apk add --no-cache bash

RUN pip install -r requirements.txt

RUN chmod 755 /app/app.py

#"RUN crontab -l" - Este comando obtiene la configuración actual de crontab en el contenedor.
#"|" - El símbolo de tubería se utiliza para redirigir la salida del comando anterior como entrada para el siguiente comando.
#"{ cat; echo "* * * * * python /app/curl.py"; }" - Esto crea un bloque de comandos.
#"|" - Redirecciona la salida del bloque de comandos anterior como entrada para el siguiente comando.
#"crontab -" - Este comando se utiliza para cargar la configuración modificada en crontab, reemplazando la configuración anterior.

#RUN crontab -l | { cat; echo "* * * * * python /app/app.py"; } | crontab -

CMD ["python", "app.py"]

