#!/bin/bash

# chkconfig: 345 95 95
# description: echo service


#function to star the service
function echoStart(){
  awk '{print $1}' /mnt/request.log
}

#function that explains the service
function echoHelp(){
  echo -e "Help service:\n start: shows the IP given in the file request.log."
  }

case "$1" in
start)
echoStart
;;
*)
echoHelp
exit 1
;;
esac
exit 0