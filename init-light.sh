#!/bin/bash

#to use this file without git clone, use command below (you must be in root)
#wget -O - https://raw.githubusercontent.com/alxvgt/init-debian/master/init-light.sh --no-cache | bash

apt-get update && apt-get install -y sudo vim git curl wget mlocate open-vm-tools open-vm-tools-desktop
echo "Now, a reboot can be helpful ;-)"
