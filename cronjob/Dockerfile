FROM python:3.7-alpine

WORKDIR /app

# add requeriments and app in workdir
ADD requirements.txt /app
ADD app.py /app
ADD curl.py /app
ADD service.sh /etc/init.d/service.sh

RUN apk add --no-cache bash

RUN pip install -r requirements.txt

RUN chmod 755 /etc/init.d/service.sh && \
    chmod 755 /app/app.py && \
    chmod 755 /app/curl.py

#"RUN crontab -l" - Este comando obtiene la configuración actual de crontab en el contenedor.
#"|" - El símbolo de tubería se utiliza para redirigir la salida del comando anterior como entrada para el siguiente comando.
#"{ cat; echo "* * * * * python /app/curl.py"; }" - Esto crea un bloque de comandos.
#"|" - Redirecciona la salida del bloque de comandos anterior como entrada para el siguiente comando.
#"crontab -" - Este comando se utiliza para cargar la configuración modificada en crontab, reemplazando la configuración anterior.

RUN crontab -l | { cat; echo "* * * * * python /app/curl.py"; } | crontab -

CMD ["/bin/bash"]
