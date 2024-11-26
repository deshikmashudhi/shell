#!/bin/bash
#loops
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.LOG
R="\e[31m"
G="\e[32m"
N="\e[0m"
VALIDATE(){
  # $1 it will recive the arg 1
  # $2 it will recive the arg 2

if [ $1 -ne 0 ]
  then
     echo -e "$2 is $R failure $N"
     exit 1
  else 
      echo -e "$2 is $G success $N"
  fi
}

check_installed(){
  PACKAGE=$1
  if dpkg -l | grep -q "^ii  $PACKAGE "; then
    print_yellow "The package '$PACKAGE' is already installed."
else
    echo "The package '$PACKAGE' is not installed."
fi
}


for i in $@
do 
    yum install $i -y
    validate $? echo -e  "the $G $i $N is installed"
    check_installed "$i"
done


improvements: tasks
#Implment log files
#implement coloours
#implement validations
#implement validations though functions
#your script should check package is already installed or not if installed print yellow colour
#if installed just print package is already installed it should not run installed command