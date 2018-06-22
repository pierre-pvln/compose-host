#!/bin/bash
#
# Required generic environment variables:
#    ${MY_BUILDER}         = the name of the builder (pvln)
#    ${MY_PLATFORM}        = type of platform to build it for (rpi3) 
#    ${MY_LEVEL}           = building level (should be lvl0)
#    ${MY_CONTAINER_NAME}  = name of the container (baseline)
#    ${MY_VERSION}         = version (1.0) 

echo ========
echo Running: docker build --tag ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION} --file ../../services/${MY_PLATFORM}/${MY_CONTAINER_NAME}/${MY_DOCKERFILE} --no-cache
echo ========

# relevant build options
#
# --no-cache: Do not use cache when building the image
# --rm:       Remove intermediate containers after a successful build

# use environment variables during build
docker build \ 
       --tag ${MY_BUILDER}/${MY_PLATFORM}-${MY_LEVEL}-${MY_CONTAINER_NAME}:${MY_VERSION} \
	   --file ../../services/${MY_PLATFORM}/${MY_CONTAINER_NAME}/${MY_DOCKERFILE} \
	   --no-cache
	   --rm
