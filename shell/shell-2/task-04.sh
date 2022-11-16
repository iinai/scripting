#!/bin/bash
echo "Give username:"

read USERNAME
if id -u $USERNAME
then
    echo "User already exist!"
else
    echo "User doesn't exist, cretaing user $USERNAME"
    useradd -m -s /bin/bash $USERNAME
    echo "User $USERNAME created"
fi

# scripti suoritetaan ajamalla sudo bash task-04.sh