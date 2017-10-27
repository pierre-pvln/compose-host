#!/bin/bash

# Required generic variables
#
# DO NOT USE: - _ and . in the variablename are ignored
export MY_PROJECT_NAME="devapache2"
export MY_YAML_FILE="apache2.yml"
export MY_PLATFORM="rpi2"
export MY_LEVEL="lvl1"

# Required data volumes on host machine
# =====================================
# Should map to a specific folder of the host.
# ./ or ../ are not allowed
#
export MY_WEB_DATA_VOLUME="/home/pi/docker/compose/storage/$MY_PROJECT_NAME/html"

if [ ! -d "$MY_WEB_DATA_VOLUME" ]; then
  # Will enter here if the $MY_WEB_DATA_VOLUME doesn't exist, even if it contains spaces.
  mkdir -p "$MY_WEB_DATA_VOLUME"
fi

