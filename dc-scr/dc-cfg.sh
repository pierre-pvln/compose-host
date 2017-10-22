#!/bin/bash
#
# Required environment variables:
#    ${MY_PROJECT_NAME} = the name of the project 
#    ${MY_YAML_FILE}    = path to the YAML file including YAML file name
#    ${MY_LEVEL}        = the level of the stack/integration (lvl1, lvl2, lvl3)

echo ==== ${MY_YAML_FILE} ====
echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../../stacks/${MY_LEVEL}/${MY_YAML_FILE} config

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../stacks/${MY_LEVEL}/${MY_YAML_FILE} \
               config

echo ==== SERVICES ====
echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../../stacks/${MY_LEVEL}/${MY_YAML_FILE} config --services

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../stacks/${MY_LEVEL}/${MY_YAML_FILE} \
               config --services

echo ==== VOLUMES ====
echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../../stacks/${MY_LEVEL}/${MY_YAML_FILE} config --volumes

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../stacks/${MY_LEVEL}/${MY_YAML_FILE} \
               config --volumes

