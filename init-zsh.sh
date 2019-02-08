#!/bin/bash

#to use this file without git clone, use command below (you must be in root)
#wget -O - https://raw.githubusercontent.com/alxvgt/init-debian/master/init-zsh.sh --no-cache | bash

sudo apt-get update && apt-get install -y zsh fonts-powerline
zsh --version
chsh -s $(which zsh)

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.local/share/fonts/
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

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

zsh -1
