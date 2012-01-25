#!/bin/bash

destination="~/git/dotfiles/";

if [ "$1" ]
  then
  destination=$1;
  fi

rm ~/.vimrc
rm -rf ~/.vim
rm ~/.bashrc
rm ~/.profile

ln -s $destination/vimrc ~/.vimrc
ln -s $destination/vim ~/.vim
ln -s $destination/profile ~/.profile
ln -s $destination/bashrc ~/.bashrc

