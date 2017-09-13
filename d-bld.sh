#!/bin/bash

# set excecute mode for shell scripts 
chmod +x *.sh

# reads and executes commands from filename in the current shell environment
source ./settings/bld.sh
source ./settings/mysql.sh

# use environment variables during build
docker build --tag $my_build_name --build-arg MY_MYSQL_SERVER_ROOT_PASSWORD=$my_mysql_root_pw ../container/
