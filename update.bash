#!/bin/bash

export USERNAME=$USER

function git_clone_or_pull {
# $1 == dirname
# $2 == remotename
# $3 == gitrepo
  echo " ------------------------------------------------------------------ "
  echo "src/$1"
  if [ -d ~/src/$1/.git ]; then
    cd ~/src/$1
    git remote -v
    git status
    git fetch --all --prune
  else
    cd ~/src
    git clone --recursive -o $2 $3 $1
  fi
}

function add_remote {
# $1 == dirname
# $2 == remotename
# $3 == gitrepo
  echo " ------------------------------------------------------------------ "
  echo "src/$1"
  cd ~/src/$1
  git remote -v
  git remote add $2 $3
  git fetch --all --prune
  git status
}

echo " ======================================= "
echo "             GITHUB (myself)             "
echo " ======================================= "

echo " ------------------------------------------------------------------ "
echo "src/dotfiles"
if [ -d ~/src/dotfiles/.git ]; then
  cd ~/src/dotfiles
  git remote -v
  git status
  git pull origin master
  git fetch --all --prune
else
  cd ~/src
  git clone -o heckj git@github.com:heckj/dotfiles.git
  cd dotfiles
fi

if [ -x /usr/local/bin/apm ]; then
    apm upgrade -y
fi

if [ -x /usr/local/bin/brew ]; then
    brew update && brew upgrade && brew prune && brew cleanup
fi

#git_clone_or_pull envyfile-graphite heckj git@github.com:heckj/envyfile-graphite.git

#git_clone_or_pull cloudenvy heckj git@github.com:heckj/cloudenvy.git
#add_remote cloudenvy cloudenvy https://github.com/cloudenvy/cloudenvy.git
#git_clone_or_pull envyfile-devstack cloudenvy https://github.com/cloudenvy/envyfile-devstack.git

#git_clone_or_pull om heckj git@github.com:heckj/om.git
#git_clone_or_pull t5 origin git@github.com:makhidkarun/t5.git
