#!/bin/bash

#to use this file without git clone, use command below
#wget -O - https://raw.githubusercontent.com/alxvgt/init-debian/master/init-light.sh | bash

su
apt-get update && apt-get install -y sudo vim zsh git curl wget fonts-powerline mlocate open-vm-tools open-vm-tools-desktop
echo "Now, a reboot can be helpful ;-)"
