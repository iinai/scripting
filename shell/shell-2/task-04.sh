#!/bin/bash
echo "Give username:"

read USERNAME
if id $USERNAME > /dev/null 2>&1
then
    echo "User already exist!"
else
    echo "User doesn't exist, cretaing user $USERNAME"
    useradd -m -s /bin/bash $USERNAME
    echo "User $USERNAME created"
fi

# scripti suoritetaan ajamalla sudo bash task-04.sh