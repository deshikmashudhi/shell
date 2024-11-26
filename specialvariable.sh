#!/bin/bash
VAR1:$1
VAR2:$2
echo "script name $0" #to show the script name
echo "variable 1: $VAR1" #to see 1st variable
echo "all vars: $@" #to see all variables
echo "number of vars: $#" #to see how many passed number of vars
# $? exit status 