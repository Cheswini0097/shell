#!/bin/bash
USERID=$(id -u)
echo "User id is: $USERID"


if [ $USERID -ne 0 ]
then
    echo "Run the script with the Root privilage"
    exit 1