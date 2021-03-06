#!/bin/bash

# to use this file without git clone, use command below
# apt-get update && apt-get install -y wget && wget -O - https://raw.githubusercontent.com/alxvgt/init-debian/master/init-samba.sh --no-cache | bash

apt-get update && apt-get install -y samba samba-client

echo "Success : see https://wiki.debian.org/SambaServerSimple to configure accesses"
echo "In case f some problem via Windows, maybe this config must be added : https://github.com/dperson/samba/issues/41"
