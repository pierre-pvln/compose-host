#!/bin/bash

# Required generic variables
#
# - _ and . in the variable are ignored
export MY_PROJECT_NAME="tstmysql"
export MY_YAML_FILE="mysql-tst.yml"
export MY_PLATFORM="rpi2"
export MY_LEVEL="lvl1"

# Required Data volumes
# Should map to a specific folder of the host.
# ./ or ../ are not allowed
#
export MY_MYSQL_DATA_VOLUME="/home/pi/docker/compose/storage/mysql"
if [ ! -d "$MY_MYSQL_DATA_VOLUME" ]; then
  # Will enter here if the $MY_MYSQL_DATA_VOLUME doesn't exist.
  mkdir -p $MY_MYSQL_DATA_VOLUME
fi


