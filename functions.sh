#!/bin/bash
-e is used for the enabling the colour
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
USERID=$(id -u)
#THIS FUCNTION SHOULD VALIDATE THE PREVIOUS COMMAND IS SUCCES OR FAILURE
#you need to give inputs then functions will give outputs fucntions also need output 
if [ $USERID -ne 0 ]
then 
  echo "ERROR: please run this script with root acess"
  exit 1 #if non 0 exit the code
fi
#it is our responsible to check again installation porcoess is correct or not
yum install mysql -y &>>$LOGFILE #to redirect the logs to the file

VALIDATE $? "mysql installation is success"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "mysql installation is success"

functions you will keep some code inside fucntions which is more often repeeated and call wheenver required 


