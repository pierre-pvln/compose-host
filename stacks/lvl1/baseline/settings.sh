#!/bin/bash

# Required generic variables
#
# IMPORTANT: - _ and . in the variable name are ignored so don't use them

export MY_PROJECT_NAME="devbaseline"
export MY_YAML_FILE="baseline.yml"
export MY_DOCKERFILE="Dockerfile"

export MY_ASSUMED_CONTAINER=$MY_PROJECT_NAME"_baseline_1"

source ./settings/builder.sh
source ./settings/platform.sh
source ./settings/container.sh
source ./settings/level.sh
source ./settings/version.sh

# Settings for data web-volume
#source ./settings/vol_www.sh

# Settings for data ftp-volume
#source ./settings/vol_ftp.sh

# settings for data  mysql volume 
#source ./settings/vol_mysql.sh

# additional mysql settings
#source ./settings/mysql.sh
