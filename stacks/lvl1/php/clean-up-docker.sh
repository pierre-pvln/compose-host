#!/bin/bash
MY_CONTAINERLIST=$(docker container ls -a -q)
if [ -z ${MY_CONTAINERLIST} ]; then
   echo "Docker environment already clean ..."
else
   echo "Cleaning entire Docker environment ..."
   docker container stop ${MY_CONTAINERLIST} && docker system prune -a -f --volumes
fi
