#!/bin/bash

docker network create r1-aggr
docker network create r2-aggr
docker network create r3-aggr

time for i in {0..49};do
    docker container run --privileged --name=$CONTAINER_GROUP_NAME-r1-sw$i --hostname=r1-sw$i --network=r1-aggr -itd alpine
    docker container run --privileged --name=$CONTAINER_GROUP_NAME-r2-sw$i --hostname=r2-sw$i --network=r2-aggr -itd alpine
    docker container run --privileged --name=$CONTAINER_GROUP_NAME-r3-sw$i --hostname=r3-sw$i --network=r3-aggr -itd alpine    
done
