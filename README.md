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
a_folder\dev_scripts command/batch files to interact with docker host
        \secrets       secrets not to be put on github
        \on_host       shell scripts to build and run the docker configurations (OR YOU SHOULD BE HERE)
        \services      folder with the various configurations of services    
        \integrations  folder with the docker compose yaml files
        \storage       not used yet
```   

## run the script on docker host

```shell
./prepare_docker_host.sh
```

This script creates the nessesacry folders and files to be able to get it working
