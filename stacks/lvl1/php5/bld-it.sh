#!/bin/bash
LOG_ALSO_TO_FILE="YES"
MY_LOG_FOLDER="./logs"

# Do not use in a piped construction, otherwise vaiable settings are lost
# so:
#
#   source ./settings.sh 2>&1 | tee -a $MY_LOG_FILE
#
# does not work !
#
source ./settings.sh
echo "===================================="
echo "Using "${MY_DOCKERFILE}
echo

if [ ${LOG_ALSO_TO_FILE} == "YES" ]
then
    MY_CURRENT_DATETIME=$(date +"%Y%m%d_%H%M%S");
    [ ! -d ${MY_LOG_FOLDER} ] && mkdir -p ${MY_LOG_FOLDER};
    MY_LOG_FILE=${MY_LOG_FOLDER}"/"${MY_CURRENT_DATETIME}"_logfile"
    echo "===================================="
    echo "Starting logging to "${MY_LOG_FILE}" ..."
    echo
    source ../../../dc-scr/dc-bld.sh 2>&1 | tee -a $MY_LOG_FILE
else
    source ../../../dc-scr/dc-bld.sh
fi
