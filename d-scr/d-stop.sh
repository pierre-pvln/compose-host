#!/bin/bash
#
# Required generic environment variables:
#    ${MY_CONTAINER_NAME}  = name of the container (baseline)

echo ===========
echo Stop start
echo
echo ========
echo Running: docker stop ${MY_CONTAINER_NAME}
echo 

docker stop ${MY_CONTAINER_NAME}
