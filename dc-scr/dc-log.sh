#!/bin/bash
#
# Required environment variables:
#    ${MY_PROJECT_NAME} = the name of the project 
#    ${MY_YAML_FILE}    = path to the YAML file including YAML file name
#    ${MY_LEVEL}        = the level of the stack/integration (lvl1, lvl2, lvl3)

echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../../../../stacks/${MY_LEVEL}/${MY_YAML_FILE} logs

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../../../stacks/${MY_LEVEL}/${MY_YAML_FILE} \
               logs
	