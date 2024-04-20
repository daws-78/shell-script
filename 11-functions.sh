#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$IMESTAMP.log

VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo "$2...FAILURE"
        exit 1

    echo "$2...SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root access."
     exit 1 #manually exit if error comes.

else
   echo "you are super user."
fi

dnf install mysql -y &>>LOGFILE
VALIDATE $? "Installing MYSQL"

dnf install git -y &>>LOGFILE
VALIDATE $? "Installing MYSQL"
