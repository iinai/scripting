#!/bin/bash

FILE=/etc/hosts

if [[ -e $FILE ]]
then
    echo "$FILE available"
    if [[ -w $FILE ]]
    then
        echo "You have permission to edit the $FILE"
    else
        echo "You dont have permission to edit the $FILE"
    fi
fi