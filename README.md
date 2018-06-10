Configs en scripts for docker and docker-compose on dockerhost for various integrations and stacks

dc-xxx = docker-compose shell script

d-xxx  = docker shell script

Below folder structure should be present on the host which runs docker:
```
a_folder\on_host       shell scripts to build and run the docker configurations
        \services      folder with the various configurations of services
        \integrations  folder with the docker compose yaml files (YOU SHOULD BE HERE)
        \storage       not used yet
```

Below folder structure should be present on the workstation on which development is done:
```
a_folder\dev_scripts command/batch files to interact with docker host
        \secrets       secrets not to be put on github
        \on_host       shell scripts to build and run the docker configurations
        \services      folder with the various configurations of services    
        \integrations  folder with the docker compose yaml files (OR YOU SHOULD BE HERE)
        \storage       not used yet
```   

## run the script on docker host

```shell
# TODO: Check if SSH key exists
#       if not create one
#  
# add option to use std output file names and not ask for confirmation
# add option to not ask for passphrase

ssh-keygen -t rsa -b 4096 -C "pierre@pvln.nl"

# add generated ssh key to github account
# https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

# TODO: check if git is already installed
#       if not installed then

git config --global user.name Pierre Veelen
git config --global user.email pierre@pvln.nl
git config --global color.ui auto

#       otherwise start here

mkdir -p ~/myDocker/on_host
cd ~/myDocker/on_host
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-on_host.git
# Verify new remote
git remote -v
git pull origin master
#set execute bit for all *.sh files
find . -name '*.sh' -type f | xargs chmod +x

mkdir -p ~/myDocker/services
cd ~/myDocker/services
git init
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-services.git
# Verify new remote
git remote -v
git pull origin master
#set execute bit for all *.sh files
find . -name '*.sh' -type f | xargs chmod +x

mkdir -p ~/myDocker/integrations
cd ~/myDocker/integrations
git init
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-integrations.git
# Verify new remote
git remote -v
git pull origin master
#set execute bit for all *.sh files
find . -name '*.sh' -type f | xargs chmod +x

mkdir -p ~/myDocker/storage
cd ~/myDocker/storage
git init
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-storage.git
# Verify new remote
git remote -v
git pull origin master
#set execute bit for all *.sh files
find . -name '*.sh' -type f | xargs chmod +x
```
