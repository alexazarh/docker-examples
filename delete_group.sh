#!/bin/bash

docker ps | grep $CONTAINER_GROUP_NAME- | awk '{print $1}' | xargs -I {} -P 0 docker stop  {}
docker ps -a | grep $CONTAINER_GROUP_NAME- | awk '{print $1}' | xargs -I {} -P 0 docker rm  {}
