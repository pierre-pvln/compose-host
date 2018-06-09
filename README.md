Configs en scripts for docker and docker-compose on dockerhost for various integrations and stacks

 dc-xxx = docker-compose shell script
 d-xxx  = docker shell script

Below folder structure should be present on the host which runs docker:
a_folder\on_host     shell scripts to build and run the docker configurations
	 \services    folder with the various configurations of services
	 \stacks      folder with the docker compose yaml files
	 \storage     not used yet

Below folder structure should be present on the workstation on which development is done:
a_folder\dev_scripts command/batch files to interact with docker host
        \secrets     secrets not to be put on github
        \on_host     shell scripts to build and run the docker configurations
        \services    folder with the various configurations of services    
		\stacks      folder with the docker compose yaml files
		\storage     not used yet

run the script on docker host

TODO: check if git is installed
if not installed

`git config --global user.name Pierre Veelen
`git config --global user.email pierre@pvln.nl
`git config --global color.ui auto

`mkdir -p ~/myDocker/on_host
`cd ~/myDocker/on_host
`git init
`git @@@@@ connect the origin / master to remote git repository
`git pull origin master

`mkdir -p ~/myDocker/services
`cd ~/myDocker/on_host
`git init
`git @@@@@ connect the origin / master to remote git repository
`git pull origin master


`mkdir -p ~/myDocker/stacks
`cd ~/myDocker/on_host
`git init
`git @@@@@ connect the origin / master to remote git repository
`git pull origin master


`mkdir -p ~/myDocker/storage
`cd ~/myDocker/on_host
`git init
`git @@@@@ connect the origin / master to remote git repository
`git pull origin master


