#!/bin/bash

read -p "Give object(s): " list

for object in $list 
do
    if [ -d ${object} ]
    then
        echo "The given object is a directory."

    elif [ -f ${object} ]
    then
        echo "The given object is a file."
    
    else
        echo "The given object is something else."
    fi
done