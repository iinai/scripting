#!/bin/bash

INPUT=$1
IFS=','
COUNTER=1

while read MANUFACTURER MODEL COLOR YEAR
do
	echo "--- Line $COUNTER ---"
	echo "Manufacturer: $MANUFACTURER"
    echo "Model: $MODEL"
    echo "Color: $COLOR"
    echo "Year: $YEAR"

    COUNTER=$((COUNTER+1))

done < $INPUT

echo ""
echo "Add a new car"
read -p "Manufacturer: " MANUFACTURER
read -p "Model: " MODEL
read -p "Color: " COLOR
read -p "Year: " YEAR

new_entry () {
    echo ${1},${2},${3},${4} >> cars.csv
}

new_entry ${MANUFACTURER} ${MODEL} ${COLOR} ${YEAR}