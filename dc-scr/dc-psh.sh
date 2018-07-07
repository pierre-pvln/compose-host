#!/bin/bash
#
# Required generic environment variables:
#    ${MY_BUILDER}         = the name of the builder (pvln)
#    ${MY_PLATFORM}        = type of platform to build it for (rpi3)
#    ${MY_LEVEL}           = building level (lvl1)
#    ${MY_CONTAINER_NAME}  = name of the container (baseline)
#    ${MY_VERSION}         = version (1.0)
#

# create password file for docker hub 
# $ cd ~/myDocker/
# $ nano dockerhub_password.txt
# $ chmod 600 dockerhub_password.txt
#
# inspiration: https://docs.docker.com/engine/reference/commandline/login/#provide-a-password-using-stdin
#
cat ~/myDocker/dockerhub_password.txt | docker login --username ${MY_BUILDER} --password-stdin

echo ========
echo Pushing image ...
echo Running: docker push ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}
echo ========
docker push ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}

retval=$?
if [ $retval -ne 0 ]
then
    echo "Pushing image to dockerhub failed ..." 
    echo "Return value was: "$retval
    exit
else
    echo "Pushing image succeeded ..."
fi
