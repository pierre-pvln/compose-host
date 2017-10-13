#!/bin/bash

echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../../../../stacks/${MY_LEVEL}/${MY_YAML_FILE} build

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../../../stacks/${MY_LEVEL}/${MY_YAML_FILE} \
               build
