source ./settings/volumes.sh

docker-compose --project-name pvln-project --file ../integrations/pvln.nl.yml up
