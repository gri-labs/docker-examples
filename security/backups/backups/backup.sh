#!/bin/bash

backup() {
    mkdir -p /mnt/wordpress/backups/
    cd /mnt/wordpress/backups/
    mysqldump -u root -proot -h db --all-databases > backup.sql
}

case "$1" in
backup)
  backup
  ;;
esac
