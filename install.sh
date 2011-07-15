#!/bin/bash

# Determine environment
if [ `uname -s` == "Linux" ]; then
    if grep -q "Ubuntu" /etc/issue; then
        ENVSETUPENV="Ubuntu"
        # go ahead and install a vim with everything compiled in
        sudo apt-get install vim-gnome exuberant-ctags ack-grep
    fi
elif [ `uname -s` == "Darwin" ]; then
    sudo brew install ctags ack
else
    echo Unknown environment.
    exit
fi

# Install python dependencies
sudo pip install pep8 pyflakes

# Initialize and pull git submodules
git submodule init
git submodule update

rm -rf $HOME/.vim $HOME/.vimrc $HOME/.gvimrc
rm -rf $HOME/.screenrc
rm -rf $HOME/.bash_profile

ln -s `pwd`/vim/vim $HOME/.vim
ln -s `pwd`/vim/vimrc $HOME/.vimrc
ln -s `pwd`/vim/gvimrc $HOME/.gvimrc
ln -s `pwd`/screenrc $HOME/.screenrc
ln -s `pwd`/bash_profile $HOME/.bash_profile


