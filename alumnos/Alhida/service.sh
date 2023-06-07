#!/bin/bash

start() {
    ip=$(cat /mnt/request.log | awk '{print $1}')
    echo "La dirección IP  es: $ip"
}

help() {
    echo "Usage: service.sh [start|help]"
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