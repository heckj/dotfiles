#!/bin/bash

# Skip ssh new host check.
cat<<EOF | sudo tee ~/.ssh/config
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile /dev/null
EOF

# Install git and clone my dotfiles
sudo apt-get install -y git
mkdir -p ~/src
cd ~/src
git clone https://github.com/heckj/dotfiles.git

# Run individual provision scripts.

cd ~/src/dotfiles
./install.sh
./packagework.sh

cd ~
./update.bash
./golang_setup.sh
