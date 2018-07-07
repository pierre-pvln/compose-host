#!/bin/bash

# Required data volumes on host machine
# =====================================
# Should map to a specific folder of the host.
# ./ or ../ are not allowed

export MY_MYSQL_DATA_VOLUME=$MY_HOMEDIR'/myStorage/mysql'
if [ ! -d "$MY_MYSQL_DATA_VOLUME" ]; then
  # Will enter here if $MY_MYSQL_DATA_VOLUME doesn't exist.
  mkdir -p $MY_MYSQL_DATA_VOLUME
  echo $MY_MYSQL_DATA_VOLUME "created on docker host ..."
fi
echo "==============="
echo "MySQL data volume: " $MY_MYSQL_DATA_VOLUME
echo "==============="
