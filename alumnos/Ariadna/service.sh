#!/bin/bash

start() {
    ip=$(cat /mnt/request.log | awk '{print $1}')
    echo "La dirección IP obtenida es: $ip"
}

help() {
    echo "Usage: $0 [start|help]"
}

case "$1" in
    start)
    start
    ;;
    help)
    help
    ;;
    *)
    exit 1
    ;;
esac