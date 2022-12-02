#!/bin/bash

INPUT=$1
IFS=','
COUNTER=1

while read manufacturer model color year
do
	echo "--- Line $COUNTER ---"
	echo "Manufacturer: $manufacturer"
    echo "Model: $model"
    echo "Color: $color"
    echo "Year: $year"

    COUNTER=$((COUNTER+1))

done < $INPUT