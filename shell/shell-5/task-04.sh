#!/bin/bash

PORT=$1
PAGE=$2

function change_ports() {
    sed -i "s/80/$PORT/g" example.conf
    sed -i "s/index.html/$PAGE/g" example.conf
}

change_ports