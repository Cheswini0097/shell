#!/bin/bash
USERID=$(id -u)
echo "User id is: $USERID"


if [ $USERID -ne 0 ]
then
    echo "Run the script with the Root privilages"
    exit 1
fi
dnf list installed git # to check wheather git is intalled or not
if [ $? -ne 0 ]
then
    echo "git is not installed, going to intall the git"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "git installation is not sucess... check it"
        exit1
    else
        echo "Git installation is sucess.... nothing to do"
    fi
else
    echo "git is allready installed"
            
