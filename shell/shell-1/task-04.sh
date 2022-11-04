# Create a script that copies the given file to a path provided by the user. So both paths should be asked from the user.

#!/bin/bash

echo Give the name of the file and where to copy it:

read FILENAME PATHNAME

# cp SOURCE (FILENAME) DESTINATION
cp $FILENAME $PATHNAME

echo "Copied the $FILENAME to $PATHNAME!"