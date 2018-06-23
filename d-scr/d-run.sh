#!/bin/bash
#
# Required generic environment variables:
#    ${MY_BUILDER}         = the name of the builder (pvln)
#    ${MY_PLATFORM}        = type of platform to build it for (rpi3)
#    ${MY_LEVEL}           = building level (should be lvl0)
#    ${MY_CONTAINER_NAME}  = name of the container (baseline)
#    ${MY_VERSION}         = version (1.0)

echo ===========
echo Run
echo
echo ===========
echo Running: docker run -it --name ${MY_CONTAINER_NAME} ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}
echo


# inspiration: https://stackoverflow.com/questions/38576337/execute-bash-command-if-docker-container-does-not-exist
#
if [ ! "$(docker ps -q -f name=${MY_CONTAINER_NAME})" ]; then
    echo Container ${MY_CONTAINER_NAME} found
    if [ "$(docker ps -aq -f status=exited -f status=created -f name=${MY_CONTAINER_NAME})" ]; then
        echo Container status exited or created
        # cleanup container first
        docker rm ${MY_CONTAINER_NAME}
    fi

    # run your container with volume mappping
#    docker run -it \
#	  --name ${MY_IMAGE_NAME} \
#	  -v $MY_MYSQL_DATA_VOLUME:/var/lib/mysql \
#          -e MYSQL_ROOT_PASSWORD=root \
#	  $my_build_name

    # run your container without volume mapping
    docker run -it \
          --name ${MY_CONTAINER_NAME} \
          ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}
fi
