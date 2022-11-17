#!/bin/bash

function count_objects {
  COUNT=$(ls $pwd | wc -l)
  echo "You have $COUNT objects in $(pwd)"
}

count_objects