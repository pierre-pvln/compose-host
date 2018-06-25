#!/bin/bash
#
# Required generic environment variables:
#    ${MY_BUILDER}         = the name of the builder (pvln)
#    ${MY_PLATFORM}        = type of platform to build it for (rpi3)
#    ${MY_LEVEL}           = building level (should be lvl0)
#    ${MY_CONTAINER_NAME}  = name of the container (baseline)
#    ${MY_VERSION}         = version (1.0)

echo ===========
echo Exec start
echo

# relevant exec options
#
# --interactive: Keep STDIN open even if not attached
# --tty:         Allocate a pseudo-TTY

if test -z "$MY_ASSUMED_CONTAINER"
then
   # running for lvl0 docker script
   echo ===========
   echo Running: docker exec --interactive --tty ${MY_CONTAINER_NAME} /bin/bash
   docker exec --interactive --tty \
      ${MY_CONTAINER_NAME} /bin/bash
   
else
   # running for docker-compose script (lvl1 .. lvl3)
   echo ===========
   echo Running: docker exec --interactive --tty ${MY_ASSUMED_CONTAINER} /bin/bash 
   echo   
   docker exec --interactive --tty \
      ${MY_ASSUMED_CONTAINER} /bin/bash
fi
