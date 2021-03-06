#!/bin/bash

# Required generic variables
#
# IMPORTANT: - _ and . in the variable name are ignored so don't use them

export MY_PROJECT_NAME="devpvln"
export MY_YAML_FILE="pvln.yml"

source ./settings/builder.sh
source ./settings/platform.sh
source ./settings/container.sh
source ./settings/level.sh
source ./settings/volumes.sh
source ./settings/mysql.sh
