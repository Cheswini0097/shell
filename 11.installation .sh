#!/bin/bash
USERID=(id -u)
echo "user id is: $USERID"


if [ $? -ne 0 ]
then
    echo "Run the script with the root privilage"
    exit 1