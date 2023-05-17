# Establece la imagen base
FROM php:7.4-apache

# Configura el directorio de trabajo
WORKDIR /var/www/html

# Copia los archivos de la aplicación al directorio de trabajo del contenedor
COPY . /var/www/html

# Expone el puerto 80 para permitir el acceso al servidor web
EXPOSE 80

# Instala las dependencias requeridas para la aplicación PHP
# docker-php-ext-install es un script proporcionado por las imágenes oficiales de PHP para facilitar la instalación de extensiones de PHP
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libpq-dev \
    && docker-php-ext-install -j$(nproc) \
    gd \
    mysqli \
    pdo \
    pdo_mysql

# Inicia el servidor web Apache
CMD ["apache2-foreground"]