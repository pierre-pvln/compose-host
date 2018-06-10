# TODO: Check if SSH key exists
#       if not create one
#  
# add option to use std output file names and not ask for confirmation
# add option to not ask for passphrase

ssh-keygen -t rsa -b 4096 -C "pierre@pvln.nl"

# TODO: Check if it possible to get access to github using the key.
#       if not 
#       add generated ssh key to github account
#       https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

#       if possible continue

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