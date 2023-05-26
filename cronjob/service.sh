#!/bin/bash

DATE_NOW=$(date +"%Y-%m-%d %H:%M:%S")
APPLICATION_NAME="app.py"

start() {
  echo "Starting ${APPLICATION_NAME} service at $DATE_NOW"
  #La redirección "> /dev/null" seguida de "2>&1" y "&" es una técnica comúnmente utilizada en Bash
  # para ejecutar un comando en segundo plano y descartar tanto la salida estándar (stdout)
  # como la salida de error estándar (stderr).
  nohup python3 /app/${APPLICATION_NAME} > /dev/null 2>&1 &
}

stop() {
  echo "Stopping ${APPLICATION_NAME} service at $DATE_NOW"
  pid=$(ps aux | grep -v grep | grep "${APPLICATION_NAME}" | awk '{print $1}')
  kill -9 $pid
}

restart() {
  pid=$(ps aux | grep -v grep | grep "${APPLICATION_NAME}" | awk '{print $1}')
  if [ -z "$pid" ]; then
    echo "${APPLICATION_NAME} service is not running"
  else
    echo "Stopping service with pid: $pid"
    stop
  fi

  sleep 2

  start
}

help() {
  echo "Usage: $0 {start|stop}"
}

status() {
  pid=$(ps aux | grep -v grep | grep "${APPLICATION_NAME}" | awk '{print $1}')
  if [[ -z "$pid" ]]; then
    echo "${APPLICATION_NAME}  service is not running"
  else
    echo "${APPLICATION_NAME}  service is running with pid $pid"
  fi
}

case "$1" in
start)
start
;;
stop)
stop
;;
restart)
restart
;;
status)
status
;;
*)
help
exit 1
;;
esac
exit 0
