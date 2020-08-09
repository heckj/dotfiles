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

function force_sync {
  # $1 == dirname
  # assumes that your local fork is at origin, and there is a remote
  # named "upstream" with the upstream sources
  # DOES NOT ASK QUESTIONS, WILL KILL LOCAL WORK
  if [ -d $1/.git ]; then
    cd $1
    git checkout main
    git reset --hard origin/main
    git submodule update
    git fetch --all --prune
    git rebase upstream/main
    git push origin main
    git gc
    git prune
fi
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

if [ -x $HOME/bin/google-cloud-sdk/bin/gcloud ]; then
    echo "updating gcloud components"
    gcloud components update --quiet
fi

if [ -x /usr/local/bin/apm ]; then
    apm upgrade -y
fi

if [ -x /usr/local/bin/brew ]; then
    brew update && brew upgrade && brew cleanup
fi

if [ -x /usr/local/bin/heroku ]; then
  heroku update
fi

if [ -x $(which docker) ]; then
  docker system prune --volumes -f
fi

force_sync ~/src/NetNewsWire

#git_clone_or_pull om heckj git@github.com:heckj/om.git
#git_clone_or_pull t5 origin git@github.com:makhidkarun/t5.git
