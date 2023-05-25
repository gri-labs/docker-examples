#!/bin/bash

DATE_NOW=$(date +"%Y-%m-%d %H:%M:%S")

start() {
  echo "Starting ${APPLICATION_NAME} service at $DATE_NOW"
  nohup python3 ${APPLICATION_NAME} > /dev/null 2>&1 &
}

stop() {
  echo "Stopping ${APPLICATION_NAME} service at $DATE_NOW"
  pid=$(ps aux | grep -v grep | grep "${APPLICATION_NAME}" | awk '{print $2}')
  kill -9 $pid
}

restart() {
  pid=$(ps aux | grep -v grep | grep "${APPLICATION_NAME}" | awk '{print $1}')
  if [ -z "$pid" ]; then
    echo "${APPLICATION_NAME} service is not running"

  sleep 2

  start
}

help() {
}

status() {
  pid=$(ps aux | grep -v grep | grep "${APPLICATION_NAME}" | awk '{print $2}')
  if [[ -z "$pid" ]]; then
    echo "${APPLICATION_NAME}  service is not running"
  else
    echo "${APPLICATION_NAME}  service is running with pid $pid"
  fi
}

case "$1" in
buho)
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
exit 0
