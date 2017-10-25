#!/bin/bash

# Required generic variables
#
# - _ and . in the variable are ignored
export MY_PROJECT_NAME="tstapache2"
export MY_YAML_FILE="apache2-tst.yml"
export MY_PLATFORM="rpi2"
export MY_LEVEL="lvl1"

#
# Required specific variables for apache2 container
#
# must match the value of APACHE_WEBFOLDER in Dockerfile
export APACHE_WEBFOLDER="html"

# Required data volumes on host machine
# =====================================
# Should map to a specific folder of the host.
# ./ or ../ are not allowed
#
export MY_WEB_DATA_VOLUME="/home/pi/docker/compose/storage/www/$APACHE_WEBFOLDER"

if [ ! -d "$MY_WEB_DATA_VOLUME" ]; then
  # Will enter here if the $MY_WEB_DATA_VOLUME doesn't exist, even if it contains spaces.
  mkdir -p "$MY_WEB_DATA_VOLUME"
fi

