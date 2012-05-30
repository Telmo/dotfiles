#!/bin/bash

FILES="bashrc profile bash_profile bash_functions screenrc tmux.conf gitconfig irbrc dircolorsdb"

for FILE in $FILES
do
	if [ -e ".$FILE" ]
	then rm -rf .$FILE
	fi
	ln -s ~/dotfiles/$FILE ~/.$FILE
done

