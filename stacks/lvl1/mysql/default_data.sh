#!/bin/bash

# copy default data to web data volume
#
echo "Copying default data to container volume"
sudo cp --recursive ../../../../services/"${MY_PLATFORM}"/"${MY_CONTAINER_NAME}"/files/default/* "${MY_WEB_DATA_VOLUME}"
sudo chown -R www-data:www-data "${MY_WEB_DATA_VOLUME}" 
