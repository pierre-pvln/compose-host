Configs en scripts for docker and docker-compose on dockerhost for various integrations and stacks

dc-xxx = docker-compose shell script

d-xxx  = docker shell script

Below folder structure should be present on the host which runs docker:
```
a_folder\on_host       shell scripts to build and run the docker configurations (YOU SHOULD BE HERE)
        \services      folder with the various configurations of services
        \integrations  folder with the docker compose yaml files
        \storage       not used yet
```

Below folder structure should be present on the workstation on which development is done:
```
a_folder\dev_scripts   command/batch files to interact with docker host
        \secrets       secrets not to be put on github
        \on_host       shell scripts to build and run the docker configurations (OR YOU SHOULD BE HERE)
        \services      folder with the various configurations of services    
        \integrations  folder with the docker compose yaml files
        \storage       not used yet
```   

## Prepare folders and connect to GitHub
The script prepares the folder structure, connects them to GitHub and pulls the files.

```shell
./prepare_docker_host.sh
```

## Install Docker on RPI3
```shell
# remove old versions
sudo apt-get remove docker docker-engine docker.io
# get the convenience script 
curl -fsSL get.docker.com -o get-docker.sh
# and run it
sudo sh get-docker.sh
```

