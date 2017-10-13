#!/bin/bash

#source ./settings/volumes.sh
#source ./settings/platform.sh

echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../integrations/${MY_LEVEL}/${MY_YAML_FILE} build

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../integrations/${MY_LEVEL}/${MY_YAML_FILE} \
               build
