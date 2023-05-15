# Se utiliza una imagen base de Nginx
FROM nginx:alpine

# Directorio de trabajo de la aplicación
WORKDIR /usr/share/nginx/html

# Copiar los archivos estáticos
COPY . .

# Puerto que se expondrá para el servidor web
EXPOSE 80

# Comando para ejecutar el servidor web
CMD ["nginx", "-g", "daemon off;"]