#!/bin/bash

start() {
  start /mnt/request.log
}
help() {
  echo "Usage: $0 {start|stop}"
}

RUN chmod 755 /etc/int.d/imagen.sh

case "$1" in
start)
  start
*)
  help
  exit 1
  ;;
esac
