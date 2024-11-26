#!/bin/bash

#this is called as array instead of single value it can hold multiple values
PERSONS=("ramesh" "suresh" "sachin")
inside array we use always refer values with index and it starts from 0
echo "First Person is: ${PERSONS[0]}"
echo "all Persons is: ${PERSONS[@]}" #it indicates all