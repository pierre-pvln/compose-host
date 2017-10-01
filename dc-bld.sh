#!/bin/bash
source ./settings/volumes.sh
source ./settings/platform.sh

# - _ and . are ignored
MY_PROJECT_NAME="pvlnwebsite"

env
echo =================================================
set

docker-compose --project-name ${MY_PROJECT_NAME} \
               --file ../integrations/pvln.nl.yml \
               build

