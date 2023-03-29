#!/bin/bash
#removes vimrc
rm ~/.vimrc
#removes the last statement
sed -i 'source ~/.dotfiles/bashrc_custom' ~/.bashrc
#removes the trash
rm -r ~/TRASH
