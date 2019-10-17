#!/bin/sh
ln -sf ~/dotfiles/nvim ~/.config
mkdir ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm ./installer.sh
ln -sf ~/dotfiles/.latexmkrc ~/.latexmkrc

