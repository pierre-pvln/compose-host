#!/bin/bash

# Required generic variables
#
# IMPORTANT: - _ and . in the variable name are ignored so don't use them

export MY_PROJECT_NAME="devbaseline"
export MY_YAML_FILE="baseline.yml"
export MY_DOCKERFILE="Dockerfile_short"

export MY_ASSUMED_CONTAINER=$MY_PROJECT_NAME"_baseline_1"

source ./settings/builder.sh
source ./settings/platform.sh
source ./settings/container.sh
source ./settings/level.sh
source ./settings/version.sh
