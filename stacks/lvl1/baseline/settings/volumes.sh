#!/bin/bash

export MY_WEB_DATA_VOLUME='/home/pi/docker/compose/storage/www'
if [ ! -d "$MY_WEB_DATA_VOLUME" ]; then
  # Will enter here if $MY_WEB_DATA_VOLUME doesn't exist.
  mkdir -p $MY_WEB_DATA_VOLUME
fi

echo "==============="
echo "WWW data volume: " $MY_WEB_DATA_VOLUME
echo "==============="

