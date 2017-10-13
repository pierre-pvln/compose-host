#!/bin/bash

# reads and executes commands from filename in the current shell environment
source ./settings/bld.sh

docker history --human --no-trunc $my_build_name
