#!/bin/bash

set -x

read -p "Give folder path: " FOLDERPATH

mk_folder() {
    mkdir $FOLDERPATH
    echo "Folder $FOLDERPATH created"
}

download_image() {
    wget https://student.labranet.jamk.fi/~pekkju/script/tux.png -O ${FOLDERPATH}/linux-tux.png
}

change_perm() {
    chmod 700 $FOLDERPATH
    chmod 700 $FOLDERPATH/linux-tux.png
}

mk_folder
download_image
change_perm

set +x