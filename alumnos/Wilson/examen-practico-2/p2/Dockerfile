# Indicar la imagen base que vamos a utilizar
FROM ubuntu:latest

# Establecer el directorio de trabajo
WORKDIR /p2

# Copiar los archivos necesarios a la imagen
COPY . /p2

# Ejecutar comandos para instalar dependencias
RUN apt-get update && \
    apt-get install -y python3 python3-pip curl

# creacion de los archivos 2
RUN echo "Examen punto 2.1" > /mnt/example1.txt
RUN echo "Examen punto 2.2" > /mnt/example2.txt
RUN echo "Examen punto 2.3" > /mnt/example3.txt

# permisos de los archivos punto 3
RUN chmod 755 /mnt/example1.txt
RUN chmod 600 /mnt/example2.txt
RUN chmod 777 /mnt/example3.txt

# Establecer el comando por defecto al ejecutar la imagen
CMD ["python3"]