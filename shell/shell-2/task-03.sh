#!/bin/bash

for object in ${@}
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