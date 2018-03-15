#!/bin/bash

apt-get install -y sudo vim zsh git curl wget fonts-powerline mlocate
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
cp .custom-zsh.sh ~/.custom-zsh.sh
echo "source ~/.custom-zsh.sh" >> ~/.zshrc
updatedb &

