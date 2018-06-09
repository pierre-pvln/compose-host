#!/bin/bash

# Required generic variables
#
# IMPORTANT: - _ and . in the variablename are ignored so don't use them

export MY_PROJECT_NAME="devvoluntas"
export MY_YAML_FILE="voluntas.yml"
export MY_PLATFORM="rpi3"
export MY_LEVEL="lvl1"


source ./settings/bld.sh
source ./settings/mysql.sh
source ./settings/platform.sh
source ./settings/run.sh
source ./settings/volumes.sh
