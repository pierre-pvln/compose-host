#!/bin/bash
MY_DEFAULT_DATA_OVERRIDE="YES"

# Get relevant settings
#
source ./settings.sh

if [ -f ./default_data.sh ]
then
   if [ ${MY_DEFAULT_DATA_OVERRIDE}=="YES" ]
   then
      # Add default data
      #
      source ./default_data.sh
   fi
fi

source ../../../d-scr/d-run.sh
