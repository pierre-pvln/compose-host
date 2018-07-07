#!/bin/bash

# Required generic variables
#
# IMPORTANT: - _ and . in the variable name are ignored so don't use them

export MY_PROJECT_NAME="devvoluntas"
export MY_YAML_FILE="voluntas.yml"
#export MY_DOCKERFILE="Dockerfile"
export MY_DOCKERFILE="Dockerfile_short"

export MY_ASSUMED_CONTAINER=$MY_PROJECT_NAME"_voluntasservice_1"

# Generic settings for the build / container
source ./settings/builder.sh
source ./settings/platform.sh
source ./settings/container.sh
source ./settings/level.sh
source ./settings/version.sh

# Setting the homedir; needed for the volume mappings
case ${MY_PLATFORM} in
    rpi3)
	    export MY_HOMEDIR="/home/pi"
        ;;
    ubuntu16.04)
	    export MY_HOMEDIR="/home/tester"
        ;;
    *)
        echo "Unknown platform: "${MY_PLATFORM}
        ;;
esac

# Settings for data web-volume
source ./settings/vol_www.sh

# settings for data  mysql volume 
source ./settings/vol_mysql.sh

# additional mysql settings
source ./settings/mysql.sh
