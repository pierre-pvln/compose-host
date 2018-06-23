#!/bin/bash
#
# Required generic environment variables:
#    ${MY_CONTAINER_NAME}  = name of the container (baseline)

echo ===========
echo Log start
echo
echo ========
echo Running: docker log ${MY_CONTAINER_NAME}
echo 

docker logs ${MY_CONTAINER_NAME}
