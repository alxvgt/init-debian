#!/bin/bash

apt-get install -y zsh fonts-powerline
zsh --version
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"agnoster\"/" -i ~/.zshrc
cp .custom-zsh.sh ~/.custom-zsh.sh
echo "source ~/.custom-zsh.sh" >> ~/.zshrc
updatedb &

