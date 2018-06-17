#!/bin/bash

source ./settings.sh

# list all the container id's
#
echo "list alle the container id's for "${MY_PROJECT_NAME}
MY_CONTAINERLIST=$(ps -a -q --filter=name=${MY_PROJECT_NAME}* --filter=status=exited)
echo MY_CONTAINERLIST

#Remove the containers when they are exited 
docker container rm -f $(docker ps -a -q --filter=name=${MY_PROJECT_NAME}* --filter=status=exited)
echo $?

