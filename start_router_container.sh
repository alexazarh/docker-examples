#!/bin/bash
docker container run --privileged --name=$CONTAINER_NAME --hostname=$CONTAINER_NAME --network=$NETWORK_NAME -itd alpine
