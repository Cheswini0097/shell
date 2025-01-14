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
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Git installion is not sucess"
        exit 1
    else
        echo "Git  installion is sucess"

    fi
else
    echo "Git is allready installed"
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
 echo "mysql is not installed"
 dnf install mysql -y
 if [ $? -ne -0 ]
 then
    echo "occured failure in the mysql installion"
    exit 1
 else
    echo "mysql installion is sucess"
 fi
else
    echo "Mysql is allready installed"
fi
