#!/bin/bash
#
# Required environment variables:
#    ${MY_PROJECT_NAME} = the name of the project 
#    ${MY_YAML_FILE}    = path to the YAML file including YAML file name

# Check the input 
# If not available, default settings are used
#
#

source ./settings/volumes.sh
source ./settings/platform.sh

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../integrations/${MY_YAML_FILE} \
               config --services --volumes
