#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
 echo "Please run script with root access"
fi

echo "I am continuing"