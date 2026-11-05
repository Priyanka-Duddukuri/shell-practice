#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
 echo "Please run script with root access"
 exit
fi

VALIDATE (){
     if [ $? -ne 0 ]; then
        echo "Insatlling mysql is failed"
        exit 1
     else
        echo "Installing mysql is success"
    fi

}

dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "mysql is already installed" 
 else
    echo "Installing MySql"
    dnf install mysql -y
    VALIDATE mysql $?

fi

dnf list installed nginx

if [ $? -eq 0 ]; then
    echo "nginx is already installed" 
 else
    echo "Installing nginx"
    dnf install nginx -y
    VALIDATE mysql $?

fi



