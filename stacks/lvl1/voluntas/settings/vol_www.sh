#!/bin/bash

# Required data volumes on host machine
# =====================================
# Should map to a specific folder of the host.
# ./ or ../ are not allowed

export MY_WEB_DATA_VOLUME='/home/pi/myStorage/voluntas/html'
if [ ! -d "$MY_WEB_DATA_VOLUME" ]
then
  # Will enter here if $MY_WEB_DATA_VOLUME doesn't exist.
  sudo mkdir -p $MY_WEB_DATA_VOLUME
  sudo chown -R www-data:www-data $MY_WEB_DATA_VOLUME
  echo $MY_WEB_DATA_VOLUME "created on docker host ..."
fi

export MY_WEB_LOG_VOLUME='/home/pi/myStorage/voluntas/log'
if [ ! -d "$MY_WEB_LOG_VOLUME" ]
then
  # Will enter here if $MY_WEB_LOG_VOLUME doesn't exist.
  sudo mkdir -p $MY_WEB_LOG_VOLUME
  sudo chown -R www-data:www-data $MY_WEB_LOG_VOLUME
  echo $MY_WEB_LOG_VOLUME "created on docker host ..."
fi

echo "==============="
echo "WWW data volume: " $MY_WEB_DATA_VOLUME
echo "WWW log  volume: " $MY_WEB_LOG_VOLUME
echo "==============="
