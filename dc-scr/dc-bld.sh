#!/bin/bash
#
# Required generic environment variables:
#    ${MY_PROJECT_NAME} = the name of the project 
#    ${MY_YAML_FILE}    = path to the YAML file including YAML file name
#    ${MY_LEVEL}        = the level of the stack/integration (lvl1, lvl2, lvl3)

# relevant build options
#
# --no-cache: Do not use cache when building the image
# --force-rm: Remove intermediate containers after a successful build

echo ========
echo Validating ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE}
echo Running: docker-compose --project-name ${MY_PROJECT_NAME} --file ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE} config
echo ========
docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE} \
               config

retval=$?
if [ $retval -ne 0 ]
then
    echo "FIle validation failed ..." 
    echo "Return value was: "$retval
    exit
else
    echo "Validation succeeded ..."
fi
			   

exit
			   


echo ========
echo Running: docker-compose --project-name ${MY_PROJECT_NAME} --file ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE} build --no-cache
echo ========

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../../../../integrations/${MY_LEVEL}/${MY_YAML_FILE} \
               build --no-cache
