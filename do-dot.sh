#!/bin/bash

#FILES="bashrc profile bash_profile bash_functions screenrc tmux.conf gitconfig irbrc dircolorsdb"
#
#for FILE in $FILES
#do
#	if [ -e ".$FILE" ]
#	then rm -rf .$FILE
#	fi
#	ln -s ~/dotfiles/$FILE ~/.$FILE
#done

rm -rf ~/.bashrc
rm -rf ~/.profile
rm -rf ~/.bash_profile
rm -rf ~/.bash_functions
rm -rf ~/.screenrc
rm -rf ~/.tmux.conf
rm -rf ~/.gitconfig
rm -rf ~/.irbrc
rm -rf ~/.dircolorsdb

ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/profile ~/.profile
ln -s ~/dotfiles/bash_functions ~/.bash_functions
ln -s ~/dotfiles/screenrc ~/.screenrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/irbrc ~/.irbrc
ln -s ~/dotfiles/dircolorsdb ~/.dircolorsdb
