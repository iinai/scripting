#!/bin/bash

echo Give the name of the file and where to copy it:

read FILENAME PATHNAME

# cp SOURCE (FILENAME) DESTINATION
cp $FILENAME $PATHNAME

echo "Copied the $FILENAME to $PATHNAME!"