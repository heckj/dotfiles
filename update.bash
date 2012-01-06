#!/bin/bash

export USERNAME=$USER

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

git_clone_or_pull ops git@github.com:4P/ops.git
git_clone_or_pull maestro git@github.com:4P/maestro.git
git_clone_or_pull python-maestroclient git@github.com:4P/python-maestroclient.git
git_clone_or_pull ipxe git@github.com:4P/ipxe.git
git_clone_or_pull lcd git@github.com:4P/lcd.git
git_clone_or_pull arista git@github.com:4P/arista.git
git_clone_or_pull nebula-dashboard git@github.com:4P/nebula-dashboard.git
git_clone_or_pull public-www git@github.com:4P/public-www.git
git_clone_or_pull python-keystoneclient git@github.com:4P/python-keystoneclient
git_clone_or_pull opencompute git@github.com:4P/opencompute.git
git_clone_or_pull stashboard git@github.com:4P/stashboard.git
git_clone_or_pull controller git@github.com:4P/controller.git
git_clone_or_pull noVNC https://github.com/cloudbuilders/noVNC.git
git_clone_or_pull devstack https://github.com/openstack-dev/devstack.git
git_clone_or_pull keystonelight https://github.com/4P/keystonelight.git
git_clone_or_pull openstack-qa https://github.com/openstack-dev/openstack-qa.git
git_clone_or_pull api-site-mock git@github.com:heckj/api-site-mock.git

echo " ======================================= "
echo "            GITHUB (related)             "
echo " ======================================= "

git_clone_or_pull keystone https://github.com/openstack/keystone.git
git_clone_or_pull openstack-ci https://github.com/openstack/openstack-ci.git
git_clone_or_pull openstack-ci-puppet https://github.com/openstack/openstack-ci-puppet.git
git_clone_or_pull openstack-skeleton https://github.com/openstack/openstack-skeleton.git
git_clone_or_pull nova https://github.com/openstack/nova.git
git_clone_or_pull swift https://github.com/openstack/swift.git
git_clone_or_pull glance https://github.com/openstack/glance.git
git_clone_or_pull quantum https://github.com/openstack/quantum.git
git_clone_or_pull tempest https://github.com/openstack/tempest.git
git_clone_or_pull horizon https://github.com/openstack/horizon.git

git_clone_or_pull compute-api https://github.com/openstack/compute-api.git
git_clone_or_pull object-api https://github.com/openstack/object-api.git
git_clone_or_pull image-api https://github.com/openstack/image-api.git
git_clone_or_pull identity-api https://github.com/openstack/identity-api.git
git_clone_or_pull openstack-manuals https://github.com/openstack/openstack-manuals.git

git_clone_or_pull lettuce https://github.com/gabrielfalcao/lettuce.git
git_clone_or_pull openstack-org https://github.com/toddmorey/openstack-org.git
git_clone_or_pull cobbler git://git.fedorahosted.org/cobbler
git_clone_or_pull benchmarker git@github.com:heckj/benchmarker.git
git_clone_or_pull py-statsd git@github.com:heckj/py-statsd.git
git_clone_or_pull celery git://github.com/ask/celery.git
git_clone_or_pull kombu https://github.com/ask/kombu.git
git_clone_or_pull git-cl https://github.com/martine/git-cl.git
git_clone_or_pull kokki git://github.com/samuel/kokki
git_clone_or_pull zookeeper https://github.com/apache/zookeeper.git
git_clone_or_pull djeep https://github.com/cloudbuilders/djeep.git
git_clone_or_pull crowbar git@github.com:heckj/crowbar.git
git_clone_or_pull fabric git@github.com:fabric/fabric.git
git_clone_or_pull kong https://github.com/cloudbuilders/kong.git
git_clone_or_pull stacktester https://github.com/rackspace-titan/stacktester.git

git_clone_or_pull mongo-python-driver https://github.com/mongodb/mongo-python-driver.git
git_clone_or_pull python-evzookeeper https://github.com/maoy/python-evzookeeper
git_clone_or_pull curator https://github.com/Netflix/curator

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

echo " ================================= "
echo "         BZR (OpenStack)           "
echo " ================================= "

bzr_clone_or_pull openstack-ubuntu-packagers-nova lp:~openstack-ubuntu-packagers/nova/ubuntu
bzr_clone_or_pull openstack-ubuntu-packagers-glance lp:~openstack-ubuntu-packagers/glance/ubuntu
bzr_clone_or_pull openstack-ubuntu-packagers-swift lp:~openstack-ubuntu-packagers/swift/ubuntu

echo " ================================= "
echo "         BZR (related)             "
echo " ================================= "

bzr_clone_or_pull graphite lp:graphite
bzr_clone_or_pull txzookeper lp:txzookeeper
bzr_clone_or_pull juju lp:juju
bzr_clone_or_pull charm-tools lp:charm-tools

echo " ================================= "
echo "            IOS & MAC              "
echo " ================================= "

git_clone_or_pull rackspace-ios https://github.com/rackspace/rackspace-ios.git
git_update ioctocat
git_update iTerm2
git_update stsh-client
git_update ludus
git_update boardtest
