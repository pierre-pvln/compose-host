#!/bin/bash
#
# Required generic environment variables:
#    ${MY_BUILDER}         = the name of the builder (pvln)
#    ${MY_PLATFORM}        = type of platform to build it for (rpi3)
#    ${MY_LEVEL}           = building level (should be lvl0)
#    ${MY_CONTAINER_NAME}  = name of the container (baseline)
#    ${MY_VERSION}         = version (1.0)

echo ===========
echo History start
echo
echo ========
echo Running: docker history --human --no-trunc ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}
echo 

# relevant build options
#
# --human      Print sizes and dates in human readable format
# --no-trunc   Don’t truncate output
#
docker history --human --no-trunc \
       ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION}
