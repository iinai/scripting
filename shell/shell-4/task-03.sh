#!/bin/bash

read -p "Give a program to install: " PROGRAM

sudo apt install ${PROGRAM}

if [ $? -eq 0 ]
    then
    echo "${PROGRAM} installed succesfully"
    exit 0
else
    echo "Couldn't install ${PROGRAM}"
    exit 111
fi