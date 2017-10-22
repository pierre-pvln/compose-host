#!/bin/bash

# set current directory to a var
MY_WORKDIR=${PWD}

# set the required settings
source ./settings.sh

# go the folder of the  actual build script and run it
cd ../../../dc-scr
source ./dc-up.sh

# got back to directory where it all started
cd "$MY_WORKDIR"
