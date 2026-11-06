#!/bin/bash


USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

# first arg -> what are you trying to install
# second arg -> exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then
       echo $TIMESTAMP "installing $1 is failed"
       exit 1
    else
        echo $TIMESTAMP "installing $1 is success"
    fi
}


for package in $@
do
    echo "$TIMESTAMP [INFO] Installing $package"
    dnf list installed $package
    if [ $? -ne 0 ]; then
        dnf install $package -y &>> $LOGS_FILE
        VALIDATE "Installing $package" $?
    else
        echo $TIMESTAMP "$package already installed ... SKIPPING"
    fi
done


