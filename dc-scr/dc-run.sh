#!/bin/bash
#
# Required environment variables:
#    ${MY_PROJECT_NAME} = the name of the project
#    ${MY_YAML_FILE}    = path to the YAML file including YAML file name
#    ${MY_LEVEL}        = the level of the stack/integration (lvl1, lvl2, lvl3)
#    ${MY_SERVICE_NAME} = the name of the service to be started

# spins up the container and the service 
# and can override the command in the service description file
#
# --service-ports : Run command with the service's ports enabled and mapped to the host.
#

echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE} run

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE} \
               run \
			   --service-ports \
			   ${MY_SERVICE_NAME} \
			   "/bin/bash" 
