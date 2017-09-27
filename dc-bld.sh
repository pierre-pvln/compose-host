source ./settings/volumes.sh

docker-compose --project-name mysql-tst-project --file ../integrations/pvln.nl.yml build
