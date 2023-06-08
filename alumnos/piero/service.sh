#!/bin/sh

start() {
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
echo "Invalid option"
exit 1
;;
esac
exit 0