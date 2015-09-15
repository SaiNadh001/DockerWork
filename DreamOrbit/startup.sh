#!/bin/bash


LOGGEDINUSER=$USER

echo "Build Script started at $(date) by the user $LOGGEDINUSER" 

#mkdir -p /home/$USER/DOCKERHOME

export DOCKER_HOME="/home/$LOGGEDINUSER/DOCKERHOME"

export DOCKER_SERVICE="docker"

cd $DOCKER_HOME

if ps ax | grep -v grep | grep $DOCKER_SERVICE > /dev/null ; then

    echo "$DOCKER_SERVICE service is running"

else
    
    service $DOCKER_SERVICE start
    echo "$DOCKER_SERVICE is just started..."

fi

service mongod stop

service nginx stop

kill $(fuser -n tcp 3000 2> /dev/null) 2> /dev/null


chmod +x $DOCKER_HOME/DreamOrbit/*/*.sh

$DOCKER_HOME/DreamOrbit/mongodb/mongo.sh

$DOCKER_HOME/DreamOrbit/nodeapp/node.sh

$DOCKER_HOME/DreamOrbit/nginx/nginx.sh

echo "Build Script ended at $(date) by the user $LOGGEDINUSER" 