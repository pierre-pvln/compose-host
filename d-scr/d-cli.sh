#!/bin/bash
# reads and executes commands from filename in the current shell environment

# for/from previous version
# source ./settings/run.sh

echo "==============="
echo "Acces running container in CLI"
echo "==============="

# for/from previous version
# docker exec -it $my_container_name /bin/bash

docker exec -it $MY_ASSUMED_CONTAINER /bin/bash
