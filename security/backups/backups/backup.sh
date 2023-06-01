#!/bin/bash


backup() {
    mkdir -p /mnt/wordpress/backups/
    mysqldump
}

case $1 in
  ;;
esac
