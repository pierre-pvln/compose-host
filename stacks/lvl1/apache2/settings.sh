#!/bin/bash

# Required generic variables
#
# - _ and . in the variable are ignored
export MY_PROJECT_NAME="tstapache2"
export MY_YAML_FILE="apache2-tst.yml"
export MY_PLATFORM="rpi2"
export MY_LEVEL="lvl1"

# Required Data volumes
# Should map to a specific folder of the host.
# ./ or ../ are not allowed
#
export MY_WEB_DATA_VOLUME="/home/pi/docker/compose/storage/www"
if [ ! -d "$MY_WEB_DATA_VOLUME" ]; then
  # Will enter here if the $MY_MYSQL_DATA_VOLUME doesn't exist.
  mkdir -p $MY_WEB_DATA_VOLUME
fi
