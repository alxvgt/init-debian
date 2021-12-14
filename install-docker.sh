#!/bin/bash

#to use this file without git clone, use command below (you must be in root)
# apt-get update && apt-get install -y wget && wget -O - https://raw.githubusercontent.com/alxvgt/init-debian/master/install-docker.sh --no-cache | bash

DOCKER_VERSION=2.2.2

echo -e "=== Removing previous installation ... === \n"
sudo apt-get remove docker docker-engine docker.io
sudo apt-get purge docker-ce
sudo rm /usr/local/bin/docker-compose

echo -e "=== Installing docker... === \n"
sudo apt-get update
sudo apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
echo -e "=== Test ... === \n"
sudo docker --version

echo -e "=== Installing docker-compose... === \n"
sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo -e "=== Test ... === \n"
docker-compose --version
echo -e "You can test install with : 'sudo docker run hello-world'"
