#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT-NAME=$($0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT-NAME-$IMESTAMP.log
VALIDATE(){
    echo "Exit status: $1"
    echo "what are you doing: $2"
}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root access."
     exit 1 #manually exit if error comes.

else
   echo "you are super user."
fi

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install git -y
VALIDATE $? "Installing MYSQL"
