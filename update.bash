#!/bin/bash

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

echo " ------------------------------------------------------------------ "
echo "src/ops"
if [ -d ~/src/ops/.git ]; then
  cd ~/src/ops
  git remote -v
  git status
  git pull
else
  cd ~/src
  git clone git@github.com:4P/ops.git
fi

echo " ------------------------------------------------------------------ "
echo "src/sous"
if [ -d ~/src/sous/.git ]; then
  cd ~/src/sous
  git remote -v
  git status
  git pull
else
  cd ~/src
  git clone git@github.com:4P/sous.git
fi

echo " ------------------------------------------------------------------ "
echo "src/opencompute"
if [ -d ~/src/opencompute/.git ]; then
  cd ~/src/opencompute
  git remote -v
  git status
  git pull
else
  cd ~/src
  git clone git@github.com:4P/opencompute.git
fi

echo " ------------------------------------------------------------------ "
echo "src/openstack-dashboard"
if [ -d ~/src/open/stack-dashboard.git ]; then
  cd ~/src/openstack-dashboard
  git remote -v
  git status
  git pull origin master
else
  cd ~/src
  git clone git@github.com:4P/openstack-dashboard.git
fi

echo " ======================================= "
echo "            GITHUB (related)             "
echo " ======================================= "

echo " ------------------------------------------------------------------ "
echo "src/openstack-org"
if [ -d ~/src/openstack-org/.git ]; then
  cd ~/src/openstack-org
  git remote -v
  git status
  git pull origin master
else
  cd ~/src
  git clone https://github.com/toddmorey/openstack-org.git
fi

echo " ------------------------------------------------------------------ "
echo "src/cobbler"
if [ -d ~/src/cobbler/.git ]; then
  cd ~/src/cobbler
  git remote -v
  git status
  git pull origin master
else
  cd ~/src
  git clone git://git.fedorahosted.org/cobbler
fi

echo " ------------------------------------------------------------------ "
echo "src/benchmarker"
if [ -d ~/src/benchmarker/.git ]; then
  cd ~/src/benchmarker
  git remote -v
  git status
  git pull origin master
else
  cd ~/src
  git clone git@github.com:heckj/benchmarker.git
fi

echo " ------------------------------------------------------------------ "
NAME=keystone
echo "src/$NAME"
if [ -d ~/src/$NAME/.git ]; then
  cd ~/src/$NAME
  git remote -v
  git status
  git pull origin master
else
  cd ~/src
  git clone https://github.com/rackspace/keystone.git $NAME
fi

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
echo "py-statsd"
NAME=py-statsd
echo "src/$NAME"
if [ -d ~/src/$NAME/.git ]; then
  cd ~/src/$NAME
  git remote -v
  git status
  git pull origin master
else
  cd ~/src
  git clone git@github.com:heckj/py-statsd.git $NAME
fi

echo " ------------------------------------------------------------------ "
echo "celery"
NAME=celery
echo "src/$NAME"
if [ -d ~/src/$NAME/.git ]; then
  cd ~/src/$NAME
  git remote -v
  git status
  git pull origin master
else
  cd ~/src
  git clone git://github.com/ask/celery.git $NAME
fi

echo " ------------------------------------------------------------------ "
echo "kombu"
NAME=kombu
echo "src/$NAME"
if [ -d ~/src/$NAME/.git ]; then
  cd ~/src/$NAME
  git remote -v
  git status
  git pull origin master
else
  cd ~/src
  git clone https://github.com/ask/kombu.git $NAME
fi

echo " ------------------------------------------------------------------ "
echo "git-cl"
NAME=git-cl
echo "src/$NAME"
if [ -d ~/src/$NAME/.git ]; then
  cd ~/src/$NAME
  git remote -v
  git status
  git pull origin master
else
  cd ~/src
  git clone https://github.com/martine/git-cl.git $NAME
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

echo " ======================================= "
echo "          GITHUB (chef cookbooks)        "
echo " ======================================= "

echo " ------------------------------------------------------------------ "
echo "src/knife-openstack"
cd ~/src/knife-openstack
git remote -v
git status
git pull origin master

echo " ------------------------------------------------------------------ "
echo "src/chef-repo"
cd ~/src/chef-repo
git remote -v
git status
git pull origin master

echo " ------------------------------------------------------------------ "
echo "src/openstack-cookbooks"
cd ~/src/openstack-cookbooks
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/openstack-nova"
cd ~/src/openstack-nova
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/openstack-swift"
cd ~/src/openstack-swift
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/ansolabs-openstack-cookbooks"
cd ~/src/ansolabs-openstack-cookbooks
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/mattray-openstack-cookbooks"
cd ~/src/mattray-openstack-cookbooks
git remote -v
git status
git pull


echo " ------------------------------------------------------------------ "
echo "src/puppetlabs-nova"
cd ~/src/puppetlabs-nova
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/OpenStack-NOVA-Installer-Script"
cd ~/src/OpenStack-NOVA-Installer-Script
git remote -v
git status
git pull origin master
git pull dubsquared master
git pull elasticdog master

echo " ================================= "
echo "         BZR (OpenStack)           "
echo " ================================= "

echo "src/nova-milestone"
if [ -d ~/src/nova-milestone/.bzr ]; then
  cd ~/src/nova-milestone
  bzr pull
else
  cd ~/src
  bzr branch lp:~hudson-openstack/nova/milestone-proposed nova-milestone
fi

echo " ------------------------------------------------------------------ "
echo "src/swift-milestone"
if [ -d ~/src/swift-milestone/.bzr ]; then
  cd ~/src/swift-milestone
  bzr pull
else
  cd ~/src
  bzr branch lp:~hudson-openstack/swift/milestone-proposed swift-milestone
fi

echo " ------------------------------------------------------------------ "
echo "src/glance-milestone"
if [ -d ~/src/glance-milestone/.bzr ]; then
  cd ~/src/glance-milestone
  bzr pull
else
  cd ~/src
  bzr branch lp:~hudson-openstack/glance/milestone-proposed glance-milestone
fi

echo " ------------------------------------------------------------------ "
echo "src/glance-trunk"
if [ -d ~/src/glance-trunk/.bzr ]; then
  cd ~/src/glance-trunk
  bzr pull
else
  cd ~/src
  bzr branch lp:glance glance-trunk
fi

echo " ------------------------------------------------------------------ "
echo "src/nova-trunk"
if [ -d ~/src/nova-trunk/.bzr ]; then
  cd ~/src/nova-trunk
  bzr pull
else
  cd ~/src
  bzr branch lp:nova nova-trunk
fi

echo " ------------------------------------------------------------------ "
echo "src/swift-trunk"
if [ -d ~/src/swift-trunk/.bzr ]; then
  cd ~/src/swift-trunk
  bzr pull
else
  cd ~/src
  bzr branch lp:swift swift-trunk
fi

echo " ------------------------------------------------------------------ "
echo "src/openstack-manuals"
if [ -d ~/src/openstack-manuals/.bzr ]; then
  cd ~/src/openstack-manuals
  bzr pull
else
  cd ~/src
  bzr branch lp:openstack-manuals
fi

echo " ================================= "
echo "         BZR (related)             "
echo " ================================= "

echo " ------------------------------------------------------------------ "
echo "src/graphite"
if [ -d ~/src/graphite/.bzr ]; then
  cd ~/src/graphite
  bzr pull
else
  cd ~/src
  bzr branch lp:graphite
fi

echo " ------------------------------------------------------------------ "
echo "src/ensemble"
if [ -d ~/src/ensemble/.bzr ]; then
  cd ~/src/ensemble
  bzr pull
else
  cd ~/src
  bzr branch lp:ensemble
fi

echo " ================================= "
echo "            IOS & MAC              "
echo " ================================= "

echo "src/rackspace-ios"
cd ~/src/rackspace-ios
git remote -v
git status
git pull origin master

echo " ------------------------------------------------------------------ "
echo "src/ioctocat"
cd ~/src/ioctocat
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/iTerm2"
cd ~/src/iTerm2
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/stsh-client"
cd ~/src/stsh-client
git remote -v
git status
git pull

