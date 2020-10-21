#!/bin/bash
VPS="jsantman29@jsantman29.me"

export CURRENT_VPS=${VPS}
echo "Updating README.md..."
scp README.md ${CURRENT_VPS}:~/sites/.

echo "Updating docker-compose.yml..."
scp docker-compose.yml ${CURRENT_VPS}:~/sites/.

echo "Updating nginx.conf..."
scp nginx.conf ${CURRENT_VPS}:~/sites/.
