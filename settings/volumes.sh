#!/bin/bash

export MY_MYSQL_DATA_VOLUME='/home/pi/docker/compose/storage/mysql'
if [ ! -d "$MY_MYSQL_DATA_VOLUME" ]; then
  # Will enter here if $MY_MYSQL_DATA_VOLUME doesn't exist.
  mkdir -p $MY_MYSQL_DATA_VOLUME
fi
echo "==============="
echo "MySQL data volume: " $MY_MYSQL_DATA_VOLUME
echo "==============="

export MY_FTP_DATA_VOLUME='/home/pi/docker/compose/storage/ftp'
if [ ! -d "$MY_FTP_DATA_VOLUME" ]; then
  # Will enter here if $MY_FTP_DATA_VOLUME doesn't exist.
  mkdir -p $MY_FTP_DATA_VOLUME
fi

echo "==============="
echo "FTP data volume: " $MY_FTP_DATA_VOLUME
echo "==============="

export MY_WEB_DATA_VOLUME='/home/pi/docker/compose/storage/www'
if [ ! -d "$MY_WEB_DATA_VOLUME" ]; then
  # Will enter here if $MY_WEB_DATA_VOLUME doesn't exist.
  mkdir -p $MY_WEB_DATA_VOLUME
fi

echo "==============="
echo "WWW data volume: " $MY_WEB_DATA_VOLUME
echo "==============="

