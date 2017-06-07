#!/bin/bash

VERSION=${VERSION:-edge}

sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       $VERSION"

sudo apt-get update

sudo apt-get -y install docker-ce

sudo docker version
