#!/bin/bash

if [ -x /usr/local/bin/apm ]; then
    apm install --packages-file apm_list.txt
    apm upgrade -y
else
    echo "Atom doesn't appear to be installed"
fi
