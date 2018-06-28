#!/bin/bash

# explicitly set a platform value
#
MY_PLATFORM=""

# or let the dockerhost define it
#

# Get platform information
#
# inspiration: https://askubuntu.com/questions/450298/how-to-get-ubuntu-distributions-full-code-name
#
#         ID="$(/bin/bash <(cat /etc/os-release; echo 'echo ${ID/*, /}'))"
# VERSION_ID="$(/bin/bash <(cat /etc/os-release; echo 'echo ${VERSION_ID/*, /}'))"
#
#MY_OS_ID="$(. /etc/*-release; echo ${ID/*, /})""$(. /etc/*-release; echo ${VERSION_ID/*, /})"

MY_OS_ID="$(bash <(cat /etc/os-release; echo 'echo ${ID/*, /}'))""$(bash <(cat /etc/os-release; echo 'echo ${VERSION_ID/*, /}'))"

MY_MACHINE="$(uname -m)"

case ${MY_MACHINE} in
    armv7l)
        echo "Running on Raspberry Pi 3"
        MY_PLATFORM='rpi3'
        ;;
    x86_64)
        echo "Running on 64 bits system"
        case ${MY_OS_ID} in
            ubuntu16.04)
                echo "Ubuntu 16.04"
                MY_PLATFORM='ubuntu16.04'
                ;;
            ubuntu14.04)
                echo "Ubuntu 14.04"
                MY_PLATFORM='ubuntu14.04'
                ;;
	    *)
                echo "Unknown OS: "${MY_OS_ID}
                ;;
        esac
        ;;
    *)
        echo "Unknown machine: "${MY_MACHINE}
        ;;
esac

export MY_PLATFORM

echo "==============="
echo "Platform:      " $MY_PLATFORM
echo "==============="
