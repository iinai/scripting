#!/bin/bash

network_information() {
    NAME=$(hostname)
    IP=$(hostname -I)
    echo "${NAME} ${IP}"
	logger -t "network-information" "${NAME} ${IP}"
}

network_information