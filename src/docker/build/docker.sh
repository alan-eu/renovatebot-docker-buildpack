#!/bin/bash

set -e

groupadd -g 999 docker
usermod -aG docker ubuntu

curl -sSL https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz -o docker.tgz
tar xzvf docker.tgz --strip 1 -C /usr/local/bin docker/docker
rm docker.tgz

docker --version
