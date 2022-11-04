#!/bin/bash

echo Give the directory path to read:

read PATHNAME

ls $PATHNAME | wc -l