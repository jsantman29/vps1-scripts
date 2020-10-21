#!/bin/bash
VPS="jsantman29@jsantman29.me"
VPS_DIR="~/sites"
export CURRENT_VPS=${VPS}

# Downloads all the images and updates the containers with the new ones.
SCRIPT="cd ${VPS_DIR}/; docker-compose down; docker-compose up -d --remove-orphans; docker image prune;"
echo "Refreshing Docker images on ${VPS}"
ssh ${VPS} ${SCRIPT}
