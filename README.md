Configs en scripts for docker and docker-compose on dockerhost for various integrations and stacks

dc-xxx = docker-compose shell script

d-xxx  = docker shell script

Below folder structure should be present on the host which runs docker:
```
a_folder\myDocker\on_host       shell scripts to build and run the docker configurations (YOU SHOULD BE HERE)
        |        \services      folder with the various configurations of services
        |        \integrations  folder with the docker compose yaml files 
        \myStorage              folder with volumes used to store data
```

Below folder structure should be present on the workstation on which development is done:
```
a_folder\dev_scripts   command/batch files to interact with docker host
        \secrets       secrets not to be put on github
        \on_host       shell scripts to build and run the docker configurations (OR YOU SHOULD BE HERE) 
        \services      folder with the various configurations of services    
        \integrations  folder with the docker compose yaml files
```

## Step 1: Prepare folders and connect to GitHub
The script prepares the folder structure, connects them to GitHub and pulls the files.

```shell
./prepare_host_for_docker.sh
```

## Step 2: Install Docker
Now install docker on the host.<br>
See instructions in file install_docker_on_@@@.md

## Step 3: Install Docker-compose
Install docker-compose on the host

```shell
./install_docker-compose.sh
```
