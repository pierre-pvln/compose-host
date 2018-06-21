#!/bin/bash

# copy default data to web data volume
#
sudo cp --recursive ../../../../services/"${MY_PLATFORM}"/"${MY_CONTAINER_NAME}"/files/default/* "${MY_WEB_DATA_VOLUME}"

#echo "running default_data.sh"
