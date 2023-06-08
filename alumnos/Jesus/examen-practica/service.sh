#!/bin/bash

DATE_NOW=$(date +"%Y-%m-%d %H:%M:%S")

start() {
  echo "startt service $DATE_NOW"
  awk 'NR==1 {print $1}' /mnt/request.log
}

help() {
  echo "Usage: $0 {start|help}"
}

case "$1" in
start)
  start
  ;;
help)
  help
  ;;
*)
  echo "Invalid option. Usage: service.sh [start|help]"
  exit 1
  ;;
esac
exit 0
