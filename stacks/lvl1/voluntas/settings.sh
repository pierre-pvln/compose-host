#!/bin/bash

# Required generic variables
#
# IMPORTANT: - _ and . in the variable name are ignored so don't use them

export MY_PROJECT_NAME="devvoluntas"
export MY_YAML_FILE="voluntas.yml"

source ./settings/build.sh
source ./settings/mysql.sh
source ./settings/platform.sh
source ./settings/run.sh
source ./settings/volumes.sh
