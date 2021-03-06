#!/bin/bash

destination=$HOME"/git/dotfiles";

if [ "$1" ]
  then
  destination=$1;
fi
cd $destination

rm ~/.vimrc
rm -rf ~/.vim
rm ~/.bashrc
rm ~/.profile
rm ~/.tmux.conf
rm ~/.gitconfig

ln -s $destination/vimrc ~/.vimrc
ln -s $destination/vim ~/.vim
ln -s $destination/profile ~/.profile
ln -s $destination/bashrc ~/.bashrc
ln -s $destination/tmux.conf ~/.tmux.conf
ln -s $destination/gitconfig ~/.gitconfig

git submodule update --init --recursive
