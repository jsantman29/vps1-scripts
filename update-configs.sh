#!/bin/bash
VPS="jsantman29@jsantman29.me"

echo "Updating README.md..."
scp README.md ${VPS}:~/sites/.

echo "Updating docker-compose.yml..."
scp docker-compose.yml ${VPS}:~/sites/.

echo "Updating nginx.conf..."
scp nginx.conf ${VPS}:~/sites/.
