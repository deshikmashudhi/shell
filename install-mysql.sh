#!/bin/bash
#our program goal is to install mysql
# check root user or not if not root exit the program and say to user to run with sudo access if root user install mysql
#user id -->0 is always for root user
#non root id --> 1not 0

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
  echo "ERROR: please run this script with root acess"
  exit 1 #if non 0 exit the code
fi
#it is our responsible to check again installation porcoess is correct or not
yum install mysql -y


if [ $? -ne 0 ]
then
    echo "installation of my sql is errror"
    exit 1
else
    echo "installation of my sql is success"
  
fi



