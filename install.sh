#!/bin/bash

# Determine environment
if [ `uname -s` == "Linux" ]; then
    if grep -q "Ubuntu" /etc/issue; then
        ENVSETUPENV="Ubuntu"
        # go ahead and install a vim with everything compiled in
        sudo apt-get update
        sudo apt-get dist-upgrade -y
        sudo apt-get install -y tmux
        sudo apt-get install -y vim-gnome exuberant-ctags ack-grep python-pip
        ssh-keyscan github.com
    fi
    if grep -q "Linux Mint" /etc/issue; then
        ENVSETUPENV="Ubuntu"
        # go ahead and install a vim with everything compiled in
        sudo apt-get update
        sudo apt-get dist-upgrade -y
        sudo apt-get install -y tmux
        sudo apt-get install -y vim-gnome exuberant-ctags ack-grep python-pip
        ssh-keyscan github.com
    fi
elif [ `uname -s` == "Darwin" ]; then
    brew install ctags ack
    sudo easy_install pip
    ssh-keyscan github.com
    brew install nvm
else
    echo Unknown environment.
    exit
fi

# Install python dependencies
sudo pip install -U virtualenv

git clone https://github.com/milkbikis/powerline-shell
cp config.py powerline-shell/config.py
pushd powerline-shell
./install.py
popd

# Initialize and pull git submodules
git submodule update --init --recursive

rm -rf $HOME/.vim $HOME/.vimrc $HOME/.gvimrc
rm -f  $HOME/.screenrc
rm -f  $HOME/.bash_profile
rm -f  $HOME/.bashrc
rm -f  $HOME/.gitconfig
rm -f  $HOME/.pylintrc
rm -f  $HOME/.cloudenvy
rm -f  $HOME/update.bash
rm -f  $HOME/latest.bash
rm -f  $HOME/Envyfile
rm -f  $HOME/provision_development_env.sh

ln -s `pwd`/vim/vim $HOME/.vim
ln -s `pwd`/vim/vimrc $HOME/.vimrc
ln -s `pwd`/vim/gvimrc $HOME/.gvimrc
ln -s `pwd`/screenrc $HOME/.screenrc
ln -s `pwd`/bash_profile $HOME/.bash_profile
ln -s `pwd`/bashrc $HOME/.bashrc
ln -s `pwd`/gitconfig $HOME/.gitconfig
ln -s `pwd`/update.bash $HOME/update.bash
ln -s `pwd`/latest.bash $HOME/latest.bash
ln -s `pwd`/pylintrc $HOME/.pylintrc
ln -s `pwd`/Envyfile $HOME/Envyfile
ln -s `pwd`/provision_development_env.sh $HOME/provision_development_env.sh

touch $HOME/.vim/bundle/vim-markdown/doc/foo
