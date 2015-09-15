#!/bin/bash

LOGGEDINUSER=$USER

echo "Prerequisites script Started at $(date) by the user $USER" 

#mkdir -p /home/$USER/DOCKERHOME

export DOCKER_HOME="/home/$LOGGEDINUSER/DOCKERHOME"

export DOCKER_SERVICE="docker"

if ps ax | grep -v grep | grep $DOCKER_SERVICE > /dev/null ; then

    echo "$DOCKER_SERVICE service is running"

else
    
    service $DOCKER_SERVICE start
    echo "$DOCKER_SERVICE is just started..."

fi


service mongod stop

service nginx stop

kill $(fuser -n tcp 3000 2> /dev/null) 2> /dev/null


cd $DOCKER_HOME

echo "Current Directory is : $(pwd)"

cd mongo_base

$DOCKER_SERVICE build -t dreamorbit/mongo_base .

cd $DOCKER_HOME

echo "Current Directory is : $(pwd)"

cd nginx_base

$DOCKER_SERVICE build -t dreamorbit/nginx_base .

cd $DOCKER_HOME

echo "Current Directory is : $(pwd)"

cd node_base

$DOCKER_SERVICE build -t dreamorbit/node_base .

cd $DOCKER_HOME

$DOCKER_SERVICE images

echo "Prerequisites script ended at $(date) by the user $LOGGEDINUSER" 