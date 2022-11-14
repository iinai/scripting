#!/bin/bash

echo Give the name of the file you want to delete:

read FILENAME

if [[ -f $FILENAME ]]
then
    echo "$FILENAME is a regular file"
    rm $FILENAME
    echo "File $FILENAME deleted"
else
    echo "SoMeThiNg wEnT wRoNg"
fi