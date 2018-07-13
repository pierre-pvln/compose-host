#!/bin/bash

source ./settings.sh

echo
echo "List all the container id's for: "${MY_PROJECT_NAME}
echo "================================ "
#echo
#docker ps -a --filter=name=${MY_PROJECT_NAME}*
MY_CONTAINERLIST=$(docker ps -a -q --filter=name=${MY_PROJECT_NAME}*)

# add quotes around ${MY_CONTAINERLIST} otherwise it might be seen as more than one word/arguments
# which will lead to "[: too many arguments" error.
# 
if [ ! -z "${MY_CONTAINERLIST}" ]
then
   echo
   echo "Stop the following containers:   "${MY_CONTAINERLIST}
   echo "================================ "
   #docker container ls -a --filter=id=${MY_CONTAINERLIST}
   docker stop ${MY_CONTAINERLIST}

   echo
   echo "Remove the following containers: "${MY_CONTAINERLIST}
   echo "================================ "
   docker rm ${MY_CONTAINERLIST}

   # to remove the container and the volumes in 1 run use
   # docker rm --volumes ${MY_CONTAINERLIST}
else
   echo
   echo "Containers already stopped and removed"
   echo "================================ "
fi


echo
echo "List all the docker volumes for: "${MY_PROJECT_NAME}
echo "================================ "
#docker volume ls -q --filter=name=${MY_PROJECT_NAME}*
MY_VOLUMELIST=$(docker volume ls -q --filter=name=${MY_PROJECT_NAME}*)

# add quotes around ${MY_VOLUMELIST} otherwise it might be seen as more than one word/arguments
# which will lead to "[: too many arguments" error.
# 
if [ ! -z "${MY_VOLUMELIST}" ]
then
   echo
   echo "And remove them"
   echo "================================ "
   docker volume rm ${MY_VOLUMELIST}
else
   echo
   echo "Volumes already removed"
   echo "================================ "
fi
