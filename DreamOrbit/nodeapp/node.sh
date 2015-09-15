#!/bin/bash

echo "Creating dreamorbit/nodeapp and node_container" 

cd $DOCKER_HOME/DreamOrbit/nodeapp

git clone git@github.com:dreamorbit/backend.git

sed -i 's/127.0.0.1:27017/mongo/g' $DOCKER_HOME/DreamOrbit/nodeapp/backend/server.js

docker build -t dreamorbit/nodeapp .

docker run -d -p 3000:3000 --name node_container --link mongo_container:mongo dreamorbit/nodeapp