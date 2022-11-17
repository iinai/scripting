#!/bin/bash

read -p "Give path name: " PATHNAME

function count_objects {
  COUNT=$(ls $PATHNAME | wc -l)
  echo "You have $COUNT objects in $PATHNAME"
}

count_objects