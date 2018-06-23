#!/bin/bash
LOG_ALSO_TO_FILE="YES"
MY_LOG_FOLDER="./logs"

# Do not use in a piped construction, otherwise variable settings are lost
# so:
#   source ./settings.sh 2>&1 | tee -a $MY_LOG_FILE
# does not work !
#
source ./settings.sh
echo "===================================="

echo "Using "${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}
echo

if [ ${LOG_ALSO_TO_FILE} == "YES" ]
then
    MY_CURRENT_DATETIME=$(date +"%Y%m%d_%H%M%S");
    [ ! -d ${MY_LOG_FOLDER} ] && mkdir -p ${MY_LOG_FOLDER};
    MY_LOG_FILE=${MY_LOG_FOLDER}"/"${MY_CURRENT_DATETIME}"_hst-it.log"
    echo "===================================="
    echo "Starting logging to "${MY_LOG_FILE}" ..."
    echo
    source ../../../d-scr/d-hst.sh 2>&1 | tee -a $MY_LOG_FILE
else
    source ../../../d-scr/d-hst.sh
fi
