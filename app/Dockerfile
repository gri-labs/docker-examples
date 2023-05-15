# Indicar la imagen base que vamos a utilizar
FROM ubuntu:latest

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios a la imagen
COPY . /app

# Ejecutar comandos para instalar dependencias
RUN apt-get update && \
    apt-get install -y python3 python3-pip curl && \
    pip3 install -r requirements.txt

# Establecer el comando por defecto al ejecutar la imagen
CMD ["python3", "app.py"]
