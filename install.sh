#!/bin/bash

# Determine environment
if [ `uname -s` == "Linux" ]; then
    if grep -q "Ubuntu" /etc/issue; then
        ENVSETUPENV="Ubuntu"
        # go ahead and install a vim with everything compiled in
        sudo apt-get update
        sudo apt-get dist-upgrade -y
        sudo apt-get install -y tmux
        sudo apt-get install -y ripgrep python3-pip
        ssh-keyscan github.com
    fi
elif [ `uname -s` == "Darwin" ]; then
    brew bundle
    ssh-keyscan github.com
else
    echo Unknown environment, exiting.
    exit
fi

# Install nodejs dev tools
npm install -g eslint

# Install python dev tools
python3 -m pip install --user --upgrade pip
python3 -m pip install --user --upgrade pylint
python3 -m pip install --user --upgrade powerline-shell
python3 -m pip install --user virtualenv

# Initialize and pull git submodules
git submodule update --init --recursive

rm -f  $HOME/.screenrc
rm -f  $HOME/.bash_profile
rm -f  $HOME/.zprofile
rm -f  $HOME/.bashrc
rm -f  $HOME/.gitignore_global
rm -f  $HOME/.gitconfig
rm -f  $HOME/.pylintrc
rm -f  $HOME/.zshrc
rm -f  $HOME/.config/nvim
rm -f  $HOME/update.bash
rm -f  $HOME/latest.bash
rm -f  $HOME/provision_development_env.sh

mkdir -p $HOME/.config
ln -s `pwd`/screenrc $HOME/.screenrc
ln -s `pwd`/nvim/ $HOME/.config/nvim
ln -s `pwd`/bash_profile $HOME/.bash_profile
ln -s `pwd`/zprofile $HOME/.zprofile
ln -s `pwd`/bashrc $HOME/.bashrc
ln -s `pwd`/gitconfig $HOME/.gitconfig
ln -s `pwd`/gitignore_global $HOME/.gitignore_global
ln -s `pwd`/update.bash $HOME/update.bash
ln -s `pwd`/latest.bash $HOME/latest.bash
ln -s `pwd`/pylintrc $HOME/.pylintrc
ln -s `pwd`/lldbinit $HOME/.lldbinit
ln -s `pwd`/zshrc $HOME/.zshrc
ln -s `pwd`/provision_development_env.sh $HOME/provision_development_env.sh
