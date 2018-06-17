#!/bin/bash

source ./settings.sh

# list all the container id's
#
echo "List all the container id's for "${MY_PROJECT_NAME}
MY_CONTAINERLIST=$(ps -a -q --filter=name=${MY_PROJECT_NAME}* --filter=status=exited)
echo MY_CONTAINERLIST
echo "Stop all the container id's for "${MY_PROJECT_NAME}


#Remove the containers when they are exited 
#docker container rm -f $(docker ps -a -q --filter=name=${MY_PROJECT_NAME}* --filter=status=exited)
echo $?

