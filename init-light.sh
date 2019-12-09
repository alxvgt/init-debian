#!/bin/bash

# to use this file without git clone, use command below (you must be in root)
# apt-get update && apt-get install -y wget && wget -O - https://raw.githubusercontent.com/alxvgt/init-debian/master/init-light.sh --no-cache | bash

apt-get update && apt-get install -y sudo vim git curl wget mlocate netcat net-tools
apt-get install -y locales && rm -rf /var/lib/apt/lists/*
# localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
#LANG=en_US.utf8

echo "To add a user to 'sudo' group, use : /usr/sbin/usermod -aG sudo <username>"
echo "The <username> session must be restart after this action"
