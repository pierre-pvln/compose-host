#!/bin/bash

# explicitly set a containername
#
MY_CONTAINER_NAME=""

# or let folder structure define it
#
if [ -z ${MY_CONTAINER_NAME} ] 
then
   MY_START_FOLDER="$PWD"
   cd ../..
   MY_CONTAINER_NAME="${PWD##*/}"
   cd "$MY_START_FOLDER"
fi

export MY_CONTAINER_NAME

echo "==============="
echo "Containername: " $MY_CONTAINER_NAME
echo "==============="
