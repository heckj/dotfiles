#!/bin/bash

export USERNAME=$USER

function git_update {
  if [ -d ~/src/$1/.git ]; then
    echo " ------------------------------------------------------------------ "
    echo "src/$1"
    cd ~/src/$1
    git remote -v
    git status
    git fetch --all --prune
    git checkout master
    git merge origin master
    s2
  fi
}

function git_clone_or_pull {
  echo " ------------------------------------------------------------------ "
  echo "src/$1"
  if [ -d ~/src/$1/.git ]; then
    cd ~/src/$1
    git remote -v
    git status
    git fetch --all --prune
    git checkout master
    git merge origin master
  else
    cd ~/src
    git clone $2 $1
    git checkout master
  fi
}

function add_remote {
  echo " ------------------------------------------------------------------ "
  echo "src/$1"
  cd ~/src/$1
  git remote -v
  git remote add $2 $3
  git fetch --all --prune
  git status
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
echo "             GITHUB (Nebula)             "
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

git_clone_or_pull chef-ops git@github.com:4P/chef-ops.git
git_clone_or_pull ipxe git@github.com:4P/ipxe.git
git_clone_or_pull arista git@github.com:4P/arista.git
git_clone_or_pull public-www git@github.com:4P/public-www.git
git_clone_or_pull opencompute git@github.com:4P/opencompute.git
git_clone_or_pull stashboard git@github.com:4P/stashboard.git
git_clone_or_pull alexandria git@github.com:4P/alexandria.git
git_clone_or_pull taft git@github.com:4P/taft.git
git_clone_or_pull intranet git@github.com:4P/intranet.git
git_clone_or_pull python-warlock git@github.com:4P/python-warlock.git
git_clone_or_pull python-jsonschema git@github.com:4P/python-jsonschema.git
git_clone_or_pull nebstack git@github.com:4P/nebstack.git
git_clone_or_pull stackstack git@github.com:4P/stackstack.git

git_clone_or_pull cloudenvy git@github.com:heckj/cloudenvy.git
add_remote cloudenvy bcwaldon https://github.com/bcwaldon/cloudenvy.git

git_clone_or_pull bp-issues https://github.com/ttx/bp-issues.git
git_clone_or_pull devstack https://github.com/openstack-dev/devstack.git

git_clone_or_pull python-keystoneclient git@github.com:4P/python-keystoneclient
add_remote python-keystoneclient openstack https://github.com/openstack/python-keystoneclient.git

git_clone_or_pull python-quantumclient git@github.com:4P/python-quantumclient
add_remote python-quantumclient openstack https://github.com/openstack/python-quantumclient.git

git_clone_or_pull python-novaclient git@github.com:4P/python-novaclient
add_remote python-novaclient openstack https://github.com/openstack/python-novaclient.git

git_clone_or_pull python-glanceclient git@github.com:4P/python-glanceclient
add_remote python-glanceclient openstack https://github.com/openstack/python-glanceclient.git

git_clone_or_pull noVNC git@github.com:4P/noVNC.git
add_remote noVNC openstack https://github.com/openstack/noVNC

git_clone_or_pull openstack-common git@github.com:4P/openstack-common.git
add_remote openstack-common openstack https://github.com/openstack/openstack-common.git

git_clone_or_pull nova git@github.com:4P/nova.git
add_remote nova openstack https://github.com/openstack/nova.git

git_clone_or_pull swift git@github.com:4P/swift.git
add_remote nova openstack https://github.com/openstack/nova.git

git_clone_or_pull glance git@github.com:4P/glance.git
add_remote glance openstack https://github.com/openstack/glance.git

git_clone_or_pull quantum git@github.com:4P/quantum.git
add_remote quantum openstack https://github.com/openstack/quantum.git

git_clone_or_pull horizon git@github.com:4P/horizon.git
add_remote horizon openstack https://github.com/openstack/horizon.git

git_clone_or_pull keystone git@github.com:4P/keystone.git
add_remote keystone openstack https://github.com/openstack/keystone.git

git_clone_or_pull django-openstack-auth git@github.com:4P/python-django-openstack-auth.git
git_clone_or_pull nebula-dashboard git@github.com:4P/nebula-dashboard.git
git_clone_or_pull zookeeper git@github.com:4P/zookeeper.git
git_clone_or_pull maestro git@github.com:4P/maestro.git
git_clone_or_pull tools git@github.com:4P/tools.git
add_remote tools heckj git@github.com:heckj/tools.git
git_clone_or_pull nebulapki git@github.com:4P/nebulapki.git
git_clone_or_pull initramfs-tools git@github.com:4P/initramfs-tools.git
git_clone_or_pull ops git@github.com:4P/ops.git
git_clone_or_pull python-maestroclient git@github.com:4P/python-maestroclient.git
git_clone_or_pull featuredash git@github.com:4P/FeatureDash.git
git_clone_or_pull sheepdog git@github.com:4P/sheepdog.git
git_clone_or_pull eos git@github.com:4P/eos.git

git_clone_or_pull openstack-qa https://github.com/openstack-dev/openstack-qa.git
git_clone_or_pull openstack-ci https://github.com/openstack/openstack-ci.git
git_clone_or_pull openstack-ci-puppet https://github.com/openstack/openstack-ci-puppet.git
git_clone_or_pull tantrum git@github.com:4P/tantrum.git
add_remote tantrum openstack https://github.com/openstack/tempest.git

git_clone_or_pull compute-api https://github.com/openstack/compute-api.git
git_clone_or_pull object-api https://github.com/openstack/object-api.git
git_clone_or_pull image-api https://github.com/openstack/image-api.git
git_clone_or_pull identity-api https://github.com/openstack/identity-api.git
git_clone_or_pull openstack-manuals https://github.com/openstack/openstack-manuals.git
git_clone_or_pull openstack-org https://github.com/toddmorey/openstack-org.git

git_clone_or_pull py-statsd git@github.com:heckj/py-statsd.git
git_clone_or_pull celery git://github.com/ask/celery.git
git_clone_or_pull kombu https://github.com/ask/kombu.git
git_clone_or_pull curator https://github.com/Netflix/curator
git_clone_or_pull djeep https://github.com/cloudbuilders/djeep.git
git_clone_or_pull crowbar git@github.com:heckj/crowbar.git
git_clone_or_pull fabric git@github.com:fabric/fabric.git
git_clone_or_pull kong https://github.com/cloudbuilders/kong.git
git_clone_or_pull stacktester https://github.com/rackspace-titan/stacktester.git
git_clone_or_pull benchmarker git@github.com:heckj/benchmarker.git
git_clone_or_pull doyen git@github.com:heckj/doyen.git
git_clone_or_pull om git@github.com:heckj/om.git
git_clone_or_pull zombie git@github.com:termie/zombie.git
