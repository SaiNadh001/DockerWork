#!/bin/bash

echo "Creating dreamorbit/nginx and nginx_container" 

cd $DOCKER_HOME/DreamOrbit/nginx

git clone git@github.com:dreamorbit/frontend.git

docker build -t dreamorbit/nginx .

docker run -d -p 80:80 -v $(pwd)/default:/etc/nginx/sites-enabled/default --link node_container --name nginx_container dreamorbit/nginx