#!/bin/bash

# Required generic variables
#
# DO NOT USE: - _ and . in the variablename are ignored

export MY_PROJECT_NAME="devvoluntas"
export MY_YAML_FILE="voluntas.nl.yml"
export MY_PLATFORM="rpi3"
export MY_LEVEL="lvl1"


source ./settings/bld.sh
source ./settings/mysql.sh
source ./settings/platform.sh
source ./settings/run.sh
source ./settings/volumas.sh
