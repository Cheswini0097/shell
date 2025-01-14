#!/bin/bash
USERID=$(id -u)
echo "user id is: $USERID"


if [ $USERID -ne 0 ]
then
    echo "run the script with root privilage"
    exit 1
fi