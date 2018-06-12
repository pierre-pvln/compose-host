echo "Running in compose/integrations"
cd ~/myDocker/integrations
if [ -n "$(git status --porcelain)" ]; then
  echo "There are changes to handle";
  exit
else
  git pull origin master
fi

echo "Running in compose/on_host"
cd ~/myDocker/on_host
if [ -n "$(git status --porcelain)" ]; then
  echo "There are changes to handle";
  exit
else
  git pull origin master
fi

echo "Running in compose/services"
cd ~/myDocker/services
if [ -n "$(git status --porcelain)" ]; then
  echo "There are changes to handle";
  exit
else
  git pull origin master
fi

echo "Running in compose/storage"
cd ~/myDocker/storage
if [ -n "$(git status --porcelain)" ]; then
  echo "There are changes to handle";
  exit
else
  git pull origin master
fi
