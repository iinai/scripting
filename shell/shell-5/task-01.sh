#!/bin/bash

read -p "Give values: " VALS

for i in ${VALS[@]}
    do
    echo $i >> animals.txt
    done

cat animals.txt