#!/bin/bash

ARRAY=()

while true
do
  read -p "Give value: " VALUE
  if [ $VALUE = "exit" ]
  then
    for i in ${!ARRAY[@]}
    do
      echo "$i: ${ARRAY[$i]}"
    done
    break
  else
    ARRAY+=("$VALUE")
  fi
done