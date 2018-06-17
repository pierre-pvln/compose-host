echo "Running in ~/myDocker/integrations"
cd ~/myDocker/integrations
if [ -n "$(git status --porcelain)" ]; then
  echo "There are changes to handle";
  git status;
  git add .;
  git commit -m "auto update";
  git push origin master; 
  git pull origin master 
else
  git pull origin master
fi

echo "Running in ~/myDocker/on_host"
cd ~/myDocker/on_host
if [ -n "$(git status --porcelain)" ]; then
  echo "There are changes to handle";
  git status;
  git add .;
  git commit -m "auto update";
  git push origin master;
  git pull origin master
else
  git pull origin master
fi

echo "Running in ~/myDocker/services"
cd ~/myDocker/services
if [ -n "$(git status --porcelain)" ]; then
  echo "There are changes to handle";
  git status;
  git add .;
  git commit -m "auto update";
  git push origin master;
  git pull origin master
else
  git pull origin master
fi

echo "Running in ~/myDocker/storage"
cd ~/myDocker/storage
if [ -n "$(git status --porcelain)" ]; then
  echo "There are changes to handle";
  git status;
  git add .;
  git commit -m "auto update";
  git push origin master;
  git pull origin master
else
  git pull origin master
fi
