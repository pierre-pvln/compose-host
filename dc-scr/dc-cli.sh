#!/bin/bash
#
# Required environment variables:
#    ${MY_YAML_FILE}    = path to the YAML file including YAML file name
#    ${MY_LEVEL}        = the level of the stack/integration (lvl1, lvl2, lvl3)
#    ${MY_ASSUMED_CONTAINER} = the name of the container you want to access on cli

echo "UNDER INVESTIGATION" 
echo " DOES NOT WORK YET"
exit

echo docker-compose --file ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE} exec ${MY_ASSUMED_CONTAINER} /bin/bash

docker-compose --file ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE} \
               exec ${MY_ASSUMED_CONTAINER} \
               /bin/bash
