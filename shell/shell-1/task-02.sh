#!/bin/bash

echo Give the file a name:

read FILENAME

FILE=$FILENAME.txt

date "+%y-%m-%d" | tee -a $FILE