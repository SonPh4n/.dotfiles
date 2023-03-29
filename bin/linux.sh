#!/bin/bash
#checks the system
if [ "$(uname)" != "Linux" ]; then
	echo "Error: This system does not match a linux system." >> linuxsetup.log
	exit 1
fi
#makes a new directory
mkdir -p ~/".TRASH"
#checks if vimrc exists then changes its name
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "vimrc already existed and the file name was changed to .bup_vimrc." >> linuxsetup.log
fi
#redirects the contents to vimrc
cp ~/.dotfiles/etc/vimrc ~/.vimrc
#writes a statement to the end of .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

