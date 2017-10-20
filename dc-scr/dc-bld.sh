#!/bin/bash
#
# Required environment variables:
#    ${MY_PROJECT_NAME} = the name of the project 
#    ${MY_YAML_FILE}    = path to the YAML file including YAML file name
#    ${MY_LEVEL}        = the level of the stack/integration (lvl1, lvl2, lvl3)


#If MY_APACHE2_SITENAME is not defined set it to default value: html
export MY_APACHE2_SITENAME="${MY_APACHE2_SITENAME:-html}"


echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../../../../stacks/${MY_LEVEL}/${MY_YAML_FILE} build

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../../../stacks/${MY_LEVEL}/${MY_YAML_FILE} \
               build
