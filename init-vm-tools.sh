#!/bin/bash

#to use this file without git clone, use command below (you must be in root)
# apt-get update && apt-get install -y wget && wget -O - https://raw.githubusercontent.com/alxvgt/init-debian/master/init-vm-tools.sh --no-cache | bash

apt-get update && apt-get install -y open-vm-tools open-vm-tools-desktop
echo "Now, a reboot can be helpful ;-)"
