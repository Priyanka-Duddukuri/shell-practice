#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
 echo "Please run script with root access"
 exit
fi

dnf list installed mysql
if [$? -eq 0 ]; then
    echo "mysql is already installed"
    else
    echo "Installing MySql"
    dnf install mysql -y

    if [ $? -ne 0 ]; then
        echo "Insatlling mysql is failed"
        exit 1
        else
        echo "Installing mysql is success"
    fi
fi




