#!/bin/bash

# Required data volumes on host machine
# =====================================
# Should map to a specific folder of the host.
# ./ or ../ are not allowed

export MY_FTP_DATA_VOLUME='/home/pi/myStorage/ftp'
if [ ! -d "$MY_FTP_DATA_VOLUME" ]; then
  # Will enter here if $MY_FTP_DATA_VOLUME doesn't exist.
  mkdir -p $MY_FTP_DATA_VOLUME
  echo $MY_FTP_DATA_VOLUME "created on docker host ..."
fi

echo "==============="
echo "FTP data volume: " $MY_FTP_DATA_VOLUME
echo "==============="
