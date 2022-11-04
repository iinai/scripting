#!/bin/bash

echo Give names of the three files you want to delete:

read FILENAME1 FILENAME2 FILENAME3

rm /home/user/$FILENAME1 /home/user/$FILENAME2 /home/user/$FILENAME3

echo "Deleted the following files: $FILENAME1, $FILENAME2, $FILENAME3 succesfully"