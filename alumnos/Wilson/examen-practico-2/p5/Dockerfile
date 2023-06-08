FROM ubuntu:latest

LABEL authors="Wilson Forero"

#carpeta donde se guardan los servicios
COPY service.sh /etc/init.d/service.sh
COPY request.log /mnt/request.log

# permisos del archivo
RUN chmod 755 /etc/init.d/service.sh
RUN chmod 755 /mnt/request.log
#%ENTRYPOINT ["top", "-b"]

CMD ["/bin/bash"]
