#!/bin/bash

while true
do
    function plus {
        RESULT=$(($VAR1+$VAR2))
        echo "Result : ${RESULT}"
    }

    function miinus {
        RESULT=$(($VAR1-$VAR2))
        echo "Result : ${RESULT}"
    }

    function kerto {
        RESULT=$(($VAR1*$VAR2))
        echo "Result : ${RESULT}"
    }

    function jako {
        RESULT=$(($VAR1/$VAR2))
        echo "Result : ${RESULT}"
    }

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
            plus

        elif [ "${OPERATION}" = "-" ]
            then
                miinus

        elif [ "${OPERATION}" = "*" ]
            then
                kerto

        elif [ "${OPERATION}" = "/" ]
            then
                jako
    fi
done