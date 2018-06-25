#!/bin/bash
MY_DEFAULT_DATA_OVERRIDE="YES"

# Get relevant settings
#
source ./settings.sh

# Add/override data
#
if [ -f ./default_data.sh ]
then
   if [ ${MY_DEFAULT_DATA_OVERRIDE} == "YES" ]
   then
      # Add default data
      #
      source ./default_data.sh
   else
      echo "No default data override"
   fi
else
   echo "./default_data.sh not present"
fi

echo ===========
echo Run
echo
echo ===========
# inspiration: https://stackoverflow.com/questions/38576337/execute-bash-command-if-docker-container-does-not-exist
#
if [ ! "$(docker ps -q -f name=${MY_CONTAINER_NAME})" ]
then
    echo Container ${MY_CONTAINER_NAME} found
    if [ "$(docker ps -aq -f status=exited -f status=created -f name=${MY_CONTAINER_NAME})" ]
	then
        echo Container status exited or created; so we have to remove it first
        # cleanup container first
        docker rm ${MY_CONTAINER_NAME}
    fi

    echo Running: docker run -it --name ${MY_CONTAINER_NAME} -p 80:80 -v $MY_WEB_DATA_VOLUME:/var/www/html -v $MY_WEB_LOG_VOLUME:/var/log/apache2 ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}
    echo
    docker run -it \
       --name ${MY_CONTAINER_NAME} \
       -p 80:80 \
       -v $MY_WEB_DATA_VOLUME:/var/www/html \
       -v $MY_WEB_LOG_VOLUME:/var/log/apache2 \
       ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}
else
    echo Container ${MY_CONTAINER_NAME} not found
fi
