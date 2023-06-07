#!/bin/bash


backup() {
    mkdir -p /mnt/wordpress/backups/
    mysqldump -u root -proot -h db  --all-databases > /mnt/wordpress/backups/backup.sql
}

case "$1" in
backup)
  backup
  ;;
esac
