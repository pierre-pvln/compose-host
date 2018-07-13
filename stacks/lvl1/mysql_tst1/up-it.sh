#!/bin/bash
MY_DEFAULT_DATA_OVERRIDE="YES"

# Get relevant settings
#
source ./settings.sh

if [ -f ./default_data.sh ]
then
   if [ ${MY_DEFAULT_DATA_OVERRIDE} == "YES" ]
   then
      # Add default data
      #
      source ./default_data.sh
   else
      echo "No default data override"
   fi

else
   echo "./default_data.sh not present"

fi

#Create and start containers
#
source ../../../dc-scr/dc-up.sh
