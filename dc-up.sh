#!/bin/bash
source ./settings/volumes.sh
source ./settings/platform.sh

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../integrations/${MY_YAML_FILE} \
               up
