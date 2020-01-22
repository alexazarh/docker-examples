#!/bin/bash
docker container run --privileged --name=$CONTAINER_NAME --hostname=$CONTAINER_NAME --network=$NETWORK_NAME -itd alpine
if [ $? -eq 0 ]
then
  echo "Container created"
  exit 0
else
  echo "Container probably exists, starting container
  docker start $CONTAINER_NAME
  exit 0
fi
