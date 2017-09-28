source ./settings/volumes.sh

docker-compose --project-name tst-project --file ../integrations/pvln.nl.yml build
