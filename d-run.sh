#!/bin/bash

# reads and executes commands from filename in the current shell environment
source ./settings/bld.sh
source ./settings/run.sh
source ./settings/volumes.sh

# inspiration: https://stackoverflow.com/questions/38576337/execute-bash-command-if-docker-container-does-not-exist
#
if [ ! "$(docker ps -q -f name=$my_container_name)" ]; then
    echo Container $my_container_name found
    if [ "$(docker ps -aq -f status=exited -f status=created -f name=$my_container_name)" ]; then
        echo Container status exited or created
        # cleanup container first
        docker rm $my_container_name
    fi
    # run your container
    docker run -it \
	  --name $my_container_name \
	  -v $MY_MYSQL_DATA_VOLUME:/var/lib/mysql \
	  $my_build_name
fi
