#!/bin/bash
docker network create \
  --driver=bridge \
  --subnet=172.16.12.0/24 \
  --ip-range=172.16.12.0/24 \
  --gateway=172.16.12.254 \
  r1-r2
docker container run --privileged --name=r1 --hostname=r1 --network=r1-r2 -itd alpine
