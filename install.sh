#!/bin/bash

rm -rf $HOME/.vim $HOME/.vimrc $HOME/.gvimrc
rm -rf $HOME/.screenrc
rm -rf $HOME/.bash_profile

ln -s `pwd`/vim/vim $HOME/.vim
ln -s `pwd`/vim/vimrc $HOME/.vimrc
ln -s `pwd`/vim/gvimrc $HOME/.gvimrc
ln -s `pwd`/screenrc $HOME/.screenrc
ln -s `pwd`/bash_profile $HOME/.bash_profile
