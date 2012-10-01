#!/bin/bash

# Skip ssh new host check.
cat<<EOF | sudo tee ~/.ssh/config
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile /dev/null
  User ubuntu
EOF

# Install git and clone my dotfiles
sudo apt-get install -y git
git clone git@github.com:heckj/dotfiles.git
cd dotfiles

# Run individual provision scripts.
./install.sh
