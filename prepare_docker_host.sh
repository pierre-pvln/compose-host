#SETTINGS
myDockerDir="/home/pi/myDocker"

# Check if top level folder exists if not create it
[ ! -d "$myDockerDir" ] && mkdir -p "$myDockerDir" || echo "$myDockerDir present ..."

# Check if SSH key exists if not create it
[ ! -f ~/.ssh/id_rsa.pub ] && ssh-keygen -t rsa -b 4096 -C "pierre@pvln.nl" || echo "SSH key found ..."
# add option to use std output file names and not ask for confirmation
# add option to not ask for passphrase

# Attempts to ssh to GitHub
if ["$(ssh -T git@github.com)"!="Permission denied (publickey)." ]; then
   echo "Exiting, copy public key to github";
#       add generated ssh key to github account
#       https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
   exit
else
   echo "SSH into github works ...";
   exit
fi

# TODO: check if git is already installed
#       if not installed then

git config --global user.name Pierre Veelen
git config --global user.email pierre@pvln.nl
git config --global color.ui auto

#       otherwise start here

#
# create folders and files for docker host scripts
#
if [ ! -d "$myDockerDir/on_host" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir -p "$myDockerDir/on_host"
fi
cd "$myDockerDir/on_host"
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-on_host.git
# Verify new remote
git remote -v
git pull origin master
#set execute bit for all *.sh files
find . -name '*.sh' -type f | xargs chmod +x

#
# create folders and files for services provided through docker containers
# folders hold the Dockerfile files
#
if [ ! -d "$myDockerDir/services" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir -p "$myDockerDir/services"
fi
cd "$myDockerDir/services"
git init
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-services.git
# Verify new remote
git remote -v
git pull origin master
#set execute bit for all *.sh files
find . -name '*.sh' -type f | xargs chmod +x

#
# create folders and files for the integrations
# folders hold the docker compose yaml files
#
if [ ! -d "$myDockerDir/integrations" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir -p "$myDockerDir/integrations"
fi
cd "$myDockerDir/integrations"
git init
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-integrations.git
# Verify new remote
git remote -v
git pull origin master
#set execute bit for all *.sh files
find . -name '*.sh' -type f | xargs chmod +x

#
# create folders and files for the storage
#
if [ ! -d "$myDockerDir/storage" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir -p "$myDockerDir/storage"
fi
cd "$myDockerDir/storage"
git init
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-storage.git
# Verify new remote
git remote -v
git pull origin master
#set execute bit for all *.sh files
find . -name '*.sh' -type f | xargs chmod +x
