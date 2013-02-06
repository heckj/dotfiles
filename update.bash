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
echo "             GITHUB (Nebula)             "
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
  git remote add devcamcar git@github.com:devcamcar/dotfiles.git
fi

git_clone_or_pull chef-ops 4P git@github.com:4P/chef-ops.git
git_clone_or_pull ipxe 4P git@github.com:4P/ipxe.git
git_clone_or_pull arista 4P git@github.com:4P/arista.git
git_clone_or_pull public-www 4P git@github.com:4P/public-www.git
git_clone_or_pull opencompute 4P git@github.com:4P/opencompute.git
git_clone_or_pull stashboard 4P git@github.com:4P/stashboard.git
git_clone_or_pull alexandria 4P git@github.com:4P/alexandria.git
git_clone_or_pull intranet 4P git@github.com:4P/intranet.git
git_clone_or_pull nebstack 4P git@github.com:4P/nebstack.git
add_remote nebstack heckj git@github.com:heckj/nebstack.git
git_clone_or_pull stackstack 4P git@github.com:4P/stackstack.git
git_clone_or_pull nebula_tools 4P git@github.com:4P/nebula_tools.git
git_clone_or_pull nebula-tests 4P git@github.com:4P/nebula-tests.git
git_clone_or_pull anvil 4P git@github.com:4P/anvil.git
git_clone_or_pull hardware_tools 4P git@github.com:4P/hardware_tools.git
git_clone_or_pull hidpub 4P git@github.com:4P/hidpub.git
git_clone_or_pull u-boot 4P git@github.com:4P/u-boot.git
git_clone_or_pull kernel-som 4P git@github.com:4P/kernel-som.git
git_clone_or_pull maestro 4P git@github.com:4P/maestro.git
add_remote maestro heckj git@github.com:heckj/maestro.git
git_clone_or_pull pisco 4P git@github.com:4P/pisco.git
add_remote pisco heckj git@github.com:heckj/pisco.git
git_clone_or_pull maestro-presence 4P git@github.com:4P/maestro-presence.git
git_clone_or_pull tools 4P git@github.com:4P/tools.git
add_remote tools heckj git@github.com:heckj/tools.git
git_clone_or_pull nebulapki 4P git@github.com:4P/nebulapki.git
git_clone_or_pull initramfs-tools 4P git@github.com:4P/initramfs-tools.git
git_clone_or_pull ops 4P git@github.com:4P/ops.git
git_clone_or_pull python-maestroclient 4P git@github.com:4P/python-maestroclient.git
git_clone_or_pull lighthouse nebula git@github.com:nebula/lighthouse.git
git_clone_or_pull featuredash 4P git@github.com:4P/FeatureDash.git
git_clone_or_pull python-warlock 4P git@github.com:4P/python-warlock.git
git_clone_or_pull python-jsonschema 4P git@github.com:4P/python-jsonschema.git

git_clone_or_pull cloudenvy heckj git@github.com:heckj/cloudenvy.git
add_remote cloudenvy cloudenvy https://github.com/cloudenvy/cloudenvy.git
git_clone_or_pull envyfile-devstack cloudenvy https://github.com/cloudenvy/envyfile-devstack.git

git_clone_or_pull logtools 4P git@githom.com:4P/logtools.git
git_clone_or_pull ubuntu_i.mx6.mxm 4P git@github.com:4P/ubuntu_i.mx6.mxm.git
git_clone_or_pull ocl 4P git@github.com:4P/ocl.git

git_clone_or_pull packman 4P git@github.com:4P/packman.git
git_clone_or_pull packman-tools 4P git@github.com:4P/packman-tools.git
git_clone_or_pull nebula-release 4P git@github.com:4P/nebula-release.git
git_clone_or_pull nebula-release-som 4P git@github.com:4P/nebula-release-som.git

git_clone_or_pull bp-issues ttx https://github.com/ttx/bp-issues.git
git_clone_or_pull devstack openstack https://github.com/openstack-dev/devstack.git
add_remote devstack heckj git@github.com:heckj/devstack.git

git_clone_or_pull python-keystoneclient 4P git@github.com:4P/python-keystoneclient
add_remote python-keystoneclient openstack https://github.com/openstack/python-keystoneclient.git
add_remote python-keystoneclient heckj git@github.com:heckj/python-keystoneclient.git

git_clone_or_pull python-quantumclient 4P git@github.com:4P/python-quantumclient
add_remote python-quantumclient openstack https://github.com/openstack/python-quantumclient.git

git_clone_or_pull python-novaclient 4P git@github.com:4P/python-novaclient
add_remote python-novaclient openstack https://github.com/openstack/python-novaclient.git

git_clone_or_pull python-glanceclient 4P git@github.com:4P/python-glanceclient
add_remote python-glanceclient openstack https://github.com/openstack/python-glanceclient.git

git_clone_or_pull python-swiftclient 4P git@github.com:4P/python-swiftclient
add_remote python-swiftclient openstack https://github.com/openstack/python-swiftclient.git

git_clone_or_pull noVNC 4P git@github.com:4P/noVNC.git
add_remote noVNC openstack https://github.com/openstack/noVNC

git_clone_or_pull oslo-incubator openstack https://github.com/openstack/oslo-incubator.git

git_clone_or_pull python-openstackclient 4P git@github.com:4P/python-openstackclient.git
add_remote python-openstackclient openstack https://github.com/openstack/python-openstackclient.git
add_remote python-openstackclient heckj git@github.com:heckj/python-openstackclient.git

git_clone_or_pull python-cinderclient 4P git@github.com:4P/python-cinderclient.git
add_remote python-cinderclient openstack https://github.com/openstack/python-cinderclient.git

git_clone_or_pull nova 4P git@github.com:4P/nova.git
add_remote nova openstack https://github.com/openstack/nova.git

git_clone_or_pull swift 4P git@github.com:4P/swift.git
add_remote swift openstack https://github.com/openstack/swift.git

git_clone_or_pull cinder 4P git@github.com:4P/cinder.git
add_remote cinder openstack https://github.com/openstack/cinder.git

git_clone_or_pull glance 4P git@github.com:4P/glance.git
add_remote glance openstack https://github.com/openstack/glance.git

git_clone_or_pull quantum 4P git@github.com:4P/quantum.git
add_remote quantum openstack https://github.com/openstack/quantum.git

git_clone_or_pull horizon 4P git@github.com:4P/horizon.git
add_remote horizon openstack https://github.com/openstack/horizon.git

git_clone_or_pull keystone 4P git@github.com:4P/keystone.git
add_remote keystone openstack https://github.com/openstack/keystone.git
add_remote keystone heckj git@github.com:heckj/keystone.git

git_clone_or_pull django-openstack-auth 4P git@github.com:4P/python-django-openstack-auth.git
git_clone_or_pull nebula-dashboard 4P git@github.com:4P/nebula-dashboard.git
git_clone_or_pull zookeeper 4P git@github.com:4P/zookeeper.git
git_clone_or_pull kazoo origin https://github.com/python-zk/kazoo
add_remote kazoo heckj git@github.com:heckj/kazoo.git

git_clone_or_pull eos 4P git@github.com:4P/eos.git

git_clone_or_pull openstack-qa openstack https://github.com/openstack-dev/openstack-qa.git
git_clone_or_pull tempest 4P git@github.com:4P/tempest.git
add_remote tempest openstack https://github.com/openstack/tempest.git

git_clone_or_pull compute-api openstack https://github.com/openstack/compute-api.git
git_clone_or_pull object-api openstack https://github.com/openstack/object-api.git
git_clone_or_pull image-api openstack https://github.com/openstack/image-api.git
git_clone_or_pull identity-api openstack https://github.com/openstack/identity-api.git
git_clone_or_pull openstack-manuals openstack https://github.com/openstack/openstack-manuals.git
git_clone_or_pull openstack-org toddmorey https://github.com/toddmorey/openstack-org.git

git_clone_or_pull fabric fabric git@github.com:fabric/fabric.git
git_clone_or_pull benchmarker heckj git@github.com:heckj/benchmarker.git
git_clone_or_pull doyen heckj git@github.com:heckj/doyen.git
git_clone_or_pull stoplight 4P git@github.com:4P/stoplight.git
git_clone_or_pull om heckj git@github.com:heckj/om.git
git_clone_or_pull zombie termie git@github.com:termie/zombie.git

# export maestro latest for reading offline
mkdir -p ~/Dropbox/nebula/src/maestro
cd ~/src/maestro
git archive nebula-release/latest | tar -x -C ~/Dropbox/nebula/src/maestro
