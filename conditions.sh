#!/bin/bash
#print if the number is greater than 10 or not
NUMBER=$1

if [ $NUMBER -gt 10 ]  #gt is greater than number
then
  echo "$NUMBER is greater than 10"
else
   echo "$NUMBER is not greater than 10"
fi