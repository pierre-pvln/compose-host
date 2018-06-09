#!/bin/bash

# Required generic variables
#
# IMPORTANT: - _ and . in the variable name are ignored so don't use them

export MY_PROJECT_NAME="devphp5"
export MY_YAML_FILE="php5.yml"

source ./settings/builder.sh
source ./settings/mysql.sh
source ./settings/platform.sh
source ./settings/run.sh
source ./settings/volumes.sh
source ./settings/level.sh
