#!bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script Name: $0"
echo "Current working directory:$PWD"
echo "Home directory of Current user: $HOME"
echo "Hostname: $HOSTNAME"
echo "process ID of the current shell script: $$"
sleep 60 &
echo "process ID of last background command: $!"