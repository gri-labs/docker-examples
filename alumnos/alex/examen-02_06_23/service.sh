#!/bin/bash

start() {
cat /mnt/request.log | awk '{print$1}' | grep 4

}

help() {
  echo "Usage: $0 {start}"
}


case "$1" in
start)
start
;;
help)
help
;;
esac
