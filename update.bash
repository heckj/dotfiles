#!/bin/bash

echo " ======================================= "
echo "        GITHUB (Fourth Paradigm)         "
echo " ======================================= "

echo " ------------------------------------------------------------------ "
echo "src/dotfiles"
cd ~/src/dotfiles
git remote -v
git status
git pull origin master
git pull devcamcar master

echo " ------------------------------------------------------------------ "
echo "src/deployscripts"
cd ~/src/deployscripts
git remote -v
git status
git pull cloudbuilders master
git pull

echo " ------------------------------------------------------------------ "
echo "src/ops"
cd ~/src/ops
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/sous"
cd ~/src/sous
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/opencompute"
cd ~/src/opencompute
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/openstack-dashboard"
cd ~/src/openstack-dashboard
git remote -v
git status
git pull origin master

echo " ======================================= "
echo "            GITHUB (related)             "
echo " ======================================= "

echo " ------------------------------------------------------------------ "
echo "src/openstack-benchmarks"
cd ~/src/openstack-benchmarks
git remote -v
git status
git pull origin master

echo " ------------------------------------------------------------------ "
echo "src/keystone"
cd ~/src/keystone
git remote -v
git status
git pull origin master

echo " ------------------------------------------------------------------ "
echo "src/openstack.compute"
cd ~/src/openstack.compute
git remote -v
git status
git pull origin master
git pull cloudbuilders master

echo " ------------------------------------------------------------------ "
echo "py-statsd"
cd ~/src/py-statsd
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "celery"
cd ~/src/celery
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "kombu"
cd ~/src/kombu
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/git-cl"
cd ~/src/git-cl
git remote -v
git status
git pull

echo " ------------------------------------------------------------------ "
echo "src/keepalived"
cd ~/src/keepalived
git remote -v
git status
git pull origin master

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
cd ~/src/nova-milestone
bzr pull

echo " ------------------------------------------------------------------ "
echo "src/swift-milestone"
cd ~/src/swift-milestone
bzr pull

echo " ------------------------------------------------------------------ "
echo "src/glance-milestone"
cd ~/src/glance-milestone
bzr pull

echo " ------------------------------------------------------------------ "
echo "src/glance-trunk"
cd ~/src/glance
bzr pull

echo " ------------------------------------------------------------------ "
echo "src/nova-trunk"
cd ~/src/nova-trunk
bzr pull

echo " ------------------------------------------------------------------ "
echo "src/swift-trunk"
cd ~/src/swift-trunk
bzr pull

echo " ------------------------------------------------------------------ "
echo "src/openstack-manuals"
cd ~/src/openstack-manuals
bzr pull

echo " ------------------------------------------------------------------ "
echo "src/ensemble"
cd ~/src/ensemble
bzr pull

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

