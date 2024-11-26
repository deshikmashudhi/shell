#!/bin/bash
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.LOG

# Define colors for output
R="\e[31m"
G="\e[32m"
N="\e[0m"

# Function to validate the status
VALIDATE() {
    # $1 will receive the exit status
    # $2 will receive the package name

    if [ $1 -ne 0 ]; then
        echo -e "$2 is $R failure $N"
        exit 1
    else 
        echo -e "$2 is $G success $N"
    fi
}

# Check if the package is installed
check_installed() {
    PACKAGE=$1 
    if dpkg -l | grep -q "^ii  $PACKAGE "; then   # ^ii ensures that the package status is ii, meaning it is installed.
        echo -e "$G The package '$PACKAGE' is already installed. $N"
    else
        echo -e "$R The package '$PACKAGE' is not installed. $N"
    fi
}

# Loop through all arguments (packages to install)
for i in "$@"
do 
    # Try installing the package using yum (RedHat-based)
    sudo apt install "$i" -y
    VALIDATE $? "$i installation"

    # Check if the package is installed after installation
    check_installed "$i"
done