#!/bin/bash
#
# Required generic environment variables:
#    ${MY_PROJECT_NAME} = the name of the project 
#    ${MY_YAML_FILE}    = path to the YAML file including YAML file name
#    ${MY_LEVEL}        = the level of the stack/integration (lvl1, lvl2, lvl3)

# Required specific environment variables:
#    ${MY_APACHE2_SERVERNAME} = de servername for the server (NOT USED YET)
#    ${MY_APACHE2_SITENAME} = sitename for the server -> is location of websever files
#[[ -z "${MY_APACHE2_SITENAME}" ]] && MY_APACHE2_SITENAME="html"


### echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../../stacks/${MY_LEVEL}/${MY_YAML_FILE} build --build-arg MY_APACHE2_SERVERNAME=${MY_APACHE2_SERVERNAME} --build-arg MY_APACHE2_SITENAME=${MY_APACHE2_SITENAME}

###docker-compose --project-name ${MY_PROJECT_NAME} \
###               --file ../../stacks/${MY_LEVEL}/${MY_YAML_FILE} \
###               build \
###			   --build-arg MY_APACHE2_SERVERNAME=${MY_APACHE2_SERVERNAME} \
###			   --build-arg MY_APACHE2_SITENAME=${MY_APACHE2_SITENAME}

#
# build options
#
# --no-cache: Do not use cache when building the image
# --force-rm: Remove intermediate containers after a successful build

pwd

ls ../../stacks/${MY_LEVEL}/${MY_YAML_FILE}

echo docker-compose --project-name ${MY_PROJECT_NAME} --file ../../stacks/${MY_LEVEL}/${MY_YAML_FILE} build --no-cache

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../stacks/${MY_LEVEL}/${MY_YAML_FILE} \
               build --no-cache
