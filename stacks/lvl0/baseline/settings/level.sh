#!/bin/bash

MY_START_FOLDER="$PWD"
cd ../..
export MY_LEVEL="${PWD##*/}"

cd "$MY_START_FOLDER"

echo "==============="
echo "Integrationlevel:" $MY_LEVEL
echo "==============="
