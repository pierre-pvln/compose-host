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
        \storage       folder with volumes used to store data
```

## Prepare folders and connect to GitHub
The script prepares the folder structure, connects them to GitHub and pulls the files.

```shell
./prepare_host_for_docker.sh
```

Now install docker on the host
