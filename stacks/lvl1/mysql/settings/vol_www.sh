#!/bin/bash

# Required data volumes on host machine
# =====================================
# Should map to a specific folder of the host.
# ./ or ../ are not allowed

export MY_WEB_DATA_VOLUME='/home/pi/myStorage/www'
if [ ! -d "$MY_WEB_DATA_VOLUME" ]; then
  # Will enter here if $MY_WEB_DATA_VOLUME doesn't exist.
  mkdir -p $MY_WEB_DATA_VOLUME
  echo $MY_WEB_DATA_VOLUME "created on docker host ..."
fi

echo "==============="
echo "WWW data volume: " $MY_WEB_DATA_VOLUME
echo "==============="
