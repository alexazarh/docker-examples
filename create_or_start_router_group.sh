#!/bin/bash

docker network create r1-aggr
docker network create r2-aggr
docker network create r3-aggr

for i in $(seq 1 5);do

    for j in $(seq 1 5);do

        docker container run --privileged --name=$CONTAINER_GROUP_NAME-r$j-sw$i --hostname=r$j-sw$i --network=r$j-aggr -itd alpine
        if [ $? -eq 0 ]
        then
          echo "Container $CONTAINER_GROUP_NAME-r$j-sw$i created"
        else
          echo "Container exists, starting container $CONTAINER_GROUP_NAME-r$j-sw$i"
          docker start $CONTAINER_GROUP_NAME-r$j-sw$i
        fi
    
    done
done

exit 0
