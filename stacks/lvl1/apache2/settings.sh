#!/bin/bash

# Required generic variables
#
# IMPORTANT: - _ and . in the variable name are ignored so don't use them

export MY_PROJECT_NAME="devapache2"
export MY_YAML_FILE="apache2.yml"

export MY_ASSUMED_CONTAINER=$MY_PROJECT_NAME"_apache2server_1"

source ./settings/builder.sh
source ./settings/platform.sh
source ./settings/container.sh
source ./settings/level.sh
source ./settings/volumes.sh
source ./settings/mysql.sh
