#!/bin/bash

# to use this file without git clone, use command below (you must be in root)
# apt-get update && apt-get install -y wget && wget -O - https://raw.githubusercontent.com/alxvgt/init-debian/master/init-git.sh --no-cache | bash

apt-get install -y git

git config --global user.name "<username>"
git config --global user.email "<e@mail.com>"
