#!/bin/bash
docker network create \
  --driver=bridge \
  --subnet=172.16.12.0/24 \
  --ip-range=172.16.12.0/24 \
  --gateway=172.16.12.254 \
  $NETWORK_NAME
