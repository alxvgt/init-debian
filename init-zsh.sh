#!/bin/bash

apt-get install -y zsh fonts-powerline
zsh --version
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"agnoster\"/" -i ~/.zshrc

echo "
plugins=(
  git
  dotenv
  composer
  common-aliases
  docker
  docker-compose
  man
  sudo
  symfony
  symfony2
  vim-interaction
)" >> ~/.zshrc

