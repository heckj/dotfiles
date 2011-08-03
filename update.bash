#!/bin/bash
function git_update {
  if [ -d ~/src/$1/.git ]; then
    echo " ------------------------------------------------------------------ "
    echo "src/$1"
    cd ~/src/$1
    git remote -v
    git status
    git pull origin master
  fi
}

function git_clone_or_pull {
  echo " ------------------------------------------------------------------ "
  echo "src/$1"
  if [ -d ~/src/$1/.git ]; then
    cd ~/src/$1
    git remote -v
    git status
    git pull
  else
    cd ~/src
    git clone $2 $1
  fi
}

function bzr_clone_or_pull {
  echo " ------------------------------------------------------------------ "
  echo "src/$1"
  if [ -d ~/src/$1/.bzr ]; then
    cd ~/src/$1
    bzr pull
  else
    cd ~/src
    bzr branch $2 $1
  fi
}

echo " ======================================= "
echo "        GITHUB (Fourth Paradigm)         "
echo " ======================================= "

echo " ------------------------------------------------------------------ "
echo "src/dotfiles"
if [ -d ~/src/dotfiles/.git ]; then
  cd ~/src/dotfiles
  git remote -v
  git status
  git pull origin master
  git pull devcamcar master
else
  cd ~/src
  git clone git@github.com:heckj/dotfiles.git
  cd dotfiles
  git remote add devcamcar git@github.com:devcamcar/dotfiles.git
fi

echo " ------------------------------------------------------------------ "
echo "src/deployscripts"
if [ -d ~/src/deployscripts/.git ]; then
  cd ~/src/deployscripts
  git remote -v
  git status
  git pull cloudbuilders master
  git pull
else
  cd ~/src
  git clone git@github.com:4P/deployscripts.git
  cd deployscripts
  git remote add cloudbuilders git://github.com/cloudbuilders/deploy.sh.git
fi

git_clone_or_pull ops git@github.com:4P/ops.git
git_clone_or_pull sous git@github.com:4P/sous.git
git_clone_or_pull maestro git@github.com:4P/maestro.git
git_clone_or_pull public-www git@github.com:4P/public-www.git
git_clone_or_pull opencompute git@github.com:4P/opencompute.git
git_clone_or_pull stashboard git@github.com:4P/stashboard.git
git_clone_or_pull openstack-dashboard git@github.com:4P/openstack-dashboard.git
git_clone_or_pull crowbar git@github.com:heckj/crowbar.git

echo " ======================================= "
echo "            GITHUB (related)             "
echo " ======================================= "

git_clone_or_pull keystone https://github.com/openstack/keystone.git
git_clone_or_pull openstack-ci https://github.com/openstack/openstack-ci.git

git_clone_or_pull openstack-org https://github.com/toddmorey/openstack-org.git
git_clone_or_pull cobbler git://git.fedorahosted.org/cobbler
git_clone_or_pull benchmarker git@github.com:heckj/benchmarker.git
git_clone_or_pull py-statsd git@github.com:heckj/py-statsd.git
git_clone_or_pull celery git://github.com/ask/celery.git
git_clone_or_pull kombu https://github.com/ask/kombu.git
git_clone_or_pull git-cl https://github.com/martine/git-cl.git
git_clone_or_pull kokki git://github.com/samuel/kokki
git_clone_or_pull zookeeper https://github.com/apache/zookeeper.git

echo " ------------------------------------------------------------------ "
NAME=openstack.compute
echo "src/$NAME"
if [ -d ~/src/$NAME/.git ]; then
  cd ~/src/$NAME
  git remote -v
  git status
  git pull origin master
  git pull cloudbuilders master
else
  cd ~/src
  git clone https://github.com/jacobian/openstack.compute.git $NAME
  git remote add cloudbuilders https://github.com/cloudbuilders/openstack.compute.git
fi

echo " ------------------------------------------------------------------ "
echo "src/keepalived"
NAME=keepalived
echo "src/$NAME"
if [ -d ~/src/$NAME/.git ]; then
  cd ~/src/$NAME
  git remote -v
  git status
  git pull origin master
  git pull github master
else
  cd ~/src
  git clone http://master.formilux.org/git/people/alex/keepalived.git/ $NAME
  git remote add github git@github.com:heckj/keepalived.git
fi

git_clone_or_pull openstack-org https://github.com/toddmorey/openstack-org.git

echo " ======================================= "
echo "          GITHUB (chef cookbooks)        "
echo " ======================================= "

git_update knife-openstack
git_update chef-repo
git_update openstack-cookbooks
git_update openstack-nova
git_update openstack-swift
git_update ansolabs-openstack-cookbooks
git_update mattray-openstack-cookbooks
git_update puppetlabs-nova
git_update OpenStack-NOVA-Installer-Script

echo " ================================= "
echo "         BZR (OpenStack)           "
echo " ================================= "

bzr_clone_or_pull nova-milestone lp:~hudson-openstack/nova/milestone-proposed
bzr_clone_or_pull swift-milestone lp:~hudson-openstack/swift/milestone-proposed
bzr_clone_or_pull glance-milestone lp:~hudson-openstack/glance/milestone-proposed

bzr_clone_or_pull glance-trunk lp:glance
bzr_clone_or_pull swift-trunk lp:swift
bzr_clone_or_pull nova-trunk lp:nova
bzr_clone_or_pull openstack-manuals lp:openstack-manuals

echo " ================================= "
echo "         BZR (related)             "
echo " ================================= "

bzr_clone_or_pull graphite lp:graphite
bzr_clone_or_pull ensemble lp:ensemble

echo " ================================= "
echo "            IOS & MAC              "
echo " ================================= "

git_update rackspace-ios
git_update ioctocat
git_update iTerm2
git_update stsh-client
git_update ludus
