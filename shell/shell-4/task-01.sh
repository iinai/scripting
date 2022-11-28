#!/bin/bash

read -p "Give an url to ping: " URL

ping_url () {
    ping -c 1 ${URL}
    if [ ${?} -eq 0 ]
    then
        echo "Ping succesful"
        exit 0
    else
        echo "Couldn't ping $URL"
        exit 1
    fi
}

ping_url