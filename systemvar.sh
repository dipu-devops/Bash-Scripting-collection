#!/bin/bash
#
set -x # debug mod on
# To see system define variable
env
echo -e "this will show the system variables \n\n\n" 
echo "${HOME}"

echo "${USER}"

echo ${SHELL}

echo ${OSTYPE}

echo ${$} # Process id
echo ${PPID} # parent process id

echo $PWD
echo $HOSTNAME
echo $UID

sleep 4
echo "Here this program or scripts take ${SECONDS} this amount of time to comple the task"

