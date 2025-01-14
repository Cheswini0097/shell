#!/bin/bash
USERID=$(id -u)
echo "user id is: $USERID"


if [ $USERID -ne 0 ]
then
    echo "run the script with root privilage"
    exit 1
fi
dnf list installed git
if [ $? -ne 0 ]
then
    echo "git is not installed, git is installing"