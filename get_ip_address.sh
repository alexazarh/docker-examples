#!/bin/bash
docker ps | egrep "$CONTAINER_NAME-.*" | awk '{print $1}' |  xargs -P0 -n 1  -I {} docker inspect --format='{{.Name}} {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' {} | sed 's/\///g' | head -n1 | awk '{print $2}'
