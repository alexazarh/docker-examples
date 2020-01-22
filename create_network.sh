#!/bin/bash
docker network create \
  --driver=bridge \
  --subnet=$SUBNET \
  --ip-range=$IP_RANGE \
  --gateway=$GATEWAY \
  $NETWORK_NAME
