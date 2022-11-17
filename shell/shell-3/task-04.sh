#!/bin/bash

declare -a ARRAY

PATHNAME="path"

until [ ${PATHNAME} = "exit" ]
do
    read -p "Give path(s): " PATHNAME
    if [ ${PATHNAME} != "exit" ]
        then
            ARRAY+=(${PATHNAME})
    fi
done

function count_objects {
    for i in $@
    do
        local VAR=$( ls ${i} | wc -l )
        echo "Path ${i} have ${VAR} object(s)"
    done
}

count_objects ${ARRAY[@]}