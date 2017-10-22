#!/bin/bash

# set current directory to a var
MY_WORKDIR=${PWD}

# set the required settings for the host
source ./settings.sh

# copy the enevironment settings for the container to build directory
cp .env ../../../dc-scr

# go the folder of the  actual build script and run it
cd ../../../dc-scr
source ./dc-bld.sh

# got back to directory where it all started
cd "$MY_WORKDIR"
