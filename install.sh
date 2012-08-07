#!/bin/bash

# Determine environment
if [ `uname -s` == "Linux" ]; then
    if grep -q "Ubuntu" /etc/issue; then
        ENVSETUPENV="Ubuntu"
        # go ahead and install a vim with everything compiled in
        sudo apt-get install vim-gnome exuberant-ctags ack-grep python-pip
    fi
    if grep -q "Linux Mint" /etc/issue; then
        ENVSETUPENV="Ubuntu"
        # go ahead and install a vim with everything compiled in
        sudo apt-get install vim-gnome exuberant-ctags ack-grep python-pip
    fi
elif [ `uname -s` == "Darwin" ]; then
    brew install ctags ack
else
    echo Unknown environment.
    exit
fi

# Install python dependencies
sudo pip install pep8 pyflakes

# Initialize and pull git submodules
git submodule update --init --recursive

rm -rf $HOME/.vim $HOME/.vimrc $HOME/.gvimrc
rm -rf $HOME/.screenrc
rm -rf $HOME/.bash_profile
rm -rf $HOME/.bashrc
rm -rf $HOME/.gitconfig
rm -rf $HOME/.pylintrc
rm     $HOME/update.bash

ln -s `pwd`/vim/vim $HOME/.vim
ln -s `pwd`/vim/vimrc $HOME/.vimrc
ln -s `pwd`/vim/gvimrc $HOME/.gvimrc
ln -s `pwd`/screenrc $HOME/.screenrc
ln -s `pwd`/bash_profile $HOME/.bash_profile
ln -s `pwd`/bashrc $HOME/.bashrc
ln -s `pwd`/gitconfig $HOME/.gitconfig
ln -s `pwd`/update.bash $HOME/update.bash
ln -s `pwd`/pylintrc $HOME/.pylintrc
ln -s `pwd`/cloudenvy $HOME/.cloudenvy

touch $HOME/.vim/bundle/vim-markdown/doc/foo
