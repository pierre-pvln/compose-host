#Remove all docker images
#
#https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
#

#Remove all exited containers
docker rm -f $(docker ps -a -f status=exited -q)

#Remove the images
docker rmi -f $(docker images  -a -q)

# Remove all dangling volumes
docker volume rm $(docker volume ls -f dangling=true -q)
