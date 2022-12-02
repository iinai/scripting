#!/bin/bash

while true
do
    echo ""
    echo "Superheroes:"
    jq '.members | .[] | .name' superhero.json
    echo ""
    read -p "Give firstname of the hero (or exit to stop): " HERO

    if [[ "${HERO}" = "Molecule" ]]
    then
        echo ""
        read -p "Secret Identity (press 1) or Superpowers (press 2) or exit? " CHOICE
        if [[ "${CHOICE}" = 1 ]]
        then
            echo ""
            echo "Molecule Mans secret identity:"
            jq '.members | .[0] | .secretIdentity' superhero.json
        elif [[ "${CHOICE}" = 2 ]]
        then
            echo ""
            echo "Molecule Mans superpowers:"
            jq '.members | .[0] | .powers' superhero.json
        elif [[ "${CHOICE}" = "exit" ]]
        then
            break
        fi

    elif [[ "${HERO}" = "Madame" ]]
    then
        echo ""
        read -p "Secret Identity (press 1) or Superpowers (press 2) or exit? " CHOICE
        if [[ "${CHOICE}" = 1 ]]
        then
            echo ""
            echo "Madame Uppercuts secret identity:"
            jq '.members | .[1] | .secretIdentity' superhero.json
        elif [[ "${CHOICE}" = 2 ]]
        then
            echo ""
            echo "Madame Uppercuts superpowers:"
            jq '.members | .[1] | .powers' superhero.json
        elif [[ "${CHOICE}" = "exit" ]]
        then
            break
        fi

    elif [[ "${HERO}" = "Eternal" ]]
    then
        echo ""
        read -p "Secret Identity (press 1) or Superpowers (press 2) or exit? " CHOICE
        if [[ "${CHOICE}" = 1 ]]
        then
            echo ""
            echo "Eternal Flames secret identity:"
            jq '.members | .[2] | .secretIdentity' superhero.json
        elif [[ "${CHOICE}" = 2 ]]
        then
            echo ""
            echo "Eternal Flames superpowers:"
            jq '.members | .[2] | .powers' superhero.json
        elif [[ "${CHOICE}" = "exit" ]]
        then
            break
        fi

    elif [[ "${HERO}" = "exit" ]]
    then
        break
    fi
done