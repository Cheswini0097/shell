#!/bin/bash
USERID=$(id -u)

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "Run the scritp with the root privilage"
        exit 1
}
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is failed...."
        exit 1
    else
        echo "$2 is sucess"
    fi
}
CHECK_ROOT
for package in $@  #$@ is reffres to install all packages
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then
        echo "Run the Script with thw Root privilage"
        dnf install $package -y
        VALIDATE $? "$packege installing"
    else
        echo "$package already installed"
    fi
done