#!/bin/bash

source ./settings.sh

# list all the container id's
#
docker ps -a -q --filter=name=${MY_PROJECT_NAME}*

#Remove all exited containers
#docker rm -f $(docker ps -a -q --filter=name=${MY_PROJECT_NAME}*)