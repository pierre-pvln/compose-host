#!/bin/bash
MY_DEFAULT_DATA_OVERRIDE="NO"

# Get relevant settings
#
source ./settings.sh

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

#source ../../../d-scr/d-run.sh
echo ===========
echo Run
echo
echo ===========
echo Running: docker run -it --name ${MY_CONTAINER_NAME} -p 80:80 ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}
echo
docker run -it \
       --name ${MY_CONTAINER_NAME} \
       -p 80:80 \
       ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}
