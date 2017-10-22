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
export MY_APACHE2_SITENAME="testsite"
export MY_APACHE2_SERVERNAME="testservername"

#
# Write these settings to file
#
rm environment
#echo \# >environment
#echo \# Required specific variables for apache2 >>environment
#echo \# >>environment
#echo MY_APACHE2_SITENAME=${MY_APACHE2_SITENAME} >>environment
#echo MY_APACHE2_SERVERNAME=${MY_APACHE2_SERVERNAME} >>environment


# Required data volumes on host machine
# =====================================
# Should map to a specific folder of the host.
# ./ or ../ are not allowed
#
export MY_WEB_DATA_VOLUME="/home/pi/docker/compose/storage/www/${MY_APACHE2_SITENAME}"

if [ ! -d "$MY_WEB_DATA_VOLUME" ]; then
  # Will enter here if the $MY_MYSQL_DATA_VOLUME doesn't exist.
  mkdir -p ${MY_WEB_DATA_VOLUME}
fi
