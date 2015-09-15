#!/bin/bash

echo "Creating dreamorbit/mongodb and mongo_container" 

cd $DOCKER_HOME/DreamOrbit/mongodb


docker build -t dreamorbit/mongodb .

docker run -d -p 27017:27017 --name mongo_container dreamorbit/mongodb

sleep 5m

docker exec mongo_container mongorestore /data-base-folder -db data-base-name