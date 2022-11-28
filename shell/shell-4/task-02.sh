#!/bin/bash

NUM1=$RANDOM 
NUM2=$RANDOM 
NUM3=$RANDOM 

echo "${NUM1} ${NUM2} ${NUM3}"

logger -p user.info "${NUM1}"
logger -p user.info "${NUM2}"
logger -p user.info "${NUM3}"