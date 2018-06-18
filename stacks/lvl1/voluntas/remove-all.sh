#!/bin/bash

source ./settings.sh

# list all the container id's
#
echo "List all the container id's for: "${MY_PROJECT_NAME}
echo "================================ "
docker ps -a --filter=name=${MY_PROJECT_NAME}*
MY_CONTAINERLIST=$(docker ps -a -q --filter=name=${MY_PROJECT_NAME}*)

echo "Stop the following containers:   "${MY_CONTAINERLIST}
echo "================================ "
docker container ls -a --filter=id=${MY_CONTAINERLIST}
docker stop ${MY_CONTAINERLIST}

#list all the container-id that have volumename
#docker container ls -a -q --filter=volume=devapache2_MY_WEB_DATA_VOLUME


#Remove the containers when they are exited 
docker container rm -f ${MY_CONTAINERLIST}
echo $?





####!/bin/bash
###
###source ./settings.sh
###
#### list all the container id's
####
###docker ps -a -q --filter=name=${MY_PROJECT_NAME}*
###
####Remove all exited containers
###										
####docker rm -f $(docker ps -a -q --filter=name=${MY_PROJECT_NAME}*)
###						   
###
###echo "list alle the container id's for "${MY_PROJECT_NAME}
###MY_CONTAINERLIST=$(ps -a -q --filter=name=${MY_PROJECT_NAME}* --filter=status=exited)
###echo MY_CONTAINERLIST
###
####Remove the containers when they are exited 
###Docker container rm -f $(docker ps -a -q --filter=name=${MY_PROJECT_NAME}* --filter=status=exited)
###echo $?
