#!/bin/bash

while true
do
    echo "Give operation (+, -, *,/) or type exit to stop:"
	read OPERATION

	if [ "${OPERATION}" = "exit" ]
        then
        	break
        fi

    echo "Give two numbers:"
    read VAR1 VAR2

    if [ "${OPERATION}" = "+" ]
        then
        RESULT=$(($VAR1+$VAR2))
        echo "Result : ${RESULT}"

        elif [ "${OPERATION}" = "-" ]
            then
                RESULT=$(($VAR1-$VAR2))
                echo "Result : ${RESULT}"

        elif [ "${OPERATION}" = "*" ]
            then
                RESULT=$(($VAR1*$VAR2))
                echo "Result : ${RESULT}"

        elif [ "${OPERATION}" = "/" ]
            then
                RESULT=$(($VAR1/$VAR2))
                echo "Result : ${RESULT}"
    fi
done