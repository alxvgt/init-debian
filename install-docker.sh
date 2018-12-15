#!/bin/bash
echo -e "=== Removing previous installation ... === \n"
sudo apt-get remove docker docker-engine docker.io
sudo apt-get purge docker-ce
sudo rm /usr/local/bin/docker-compose

echo -e "=== Installing ... === \n"
sudo apt-get update
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo curl -L https://github.com/docker/compose/releases/download/1.23.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo -e "=== Test ... === \n"
sudo docker --version
docker-compose --version
echo -e "You can test install with : 'sudo docker run hello-world'"
