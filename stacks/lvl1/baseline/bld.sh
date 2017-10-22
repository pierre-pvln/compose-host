#!/bin/bash

# set current directory to a var
MY_WORKDIR=${PWD}

# set the required settings for the host
source ./settings.sh

# if an .env file exist in teh container build environment, delete it to prevent using wrong/old environment settings
[ -f ../../../dc-scr/.env ] && rm ../../../dc-scr/.env

# copy the environment settings for the container to build directory file .env if the environtment file exists
[ -f environment ] && cp environment ../../../dc-scr/.env

#cp .env ../../../dc-scr

# go the folder of the  actual build script and run it
cd ../../../dc-scr
source ./dc-bld.sh

# got back to directory where it all started
cd "$MY_WORKDIR"

