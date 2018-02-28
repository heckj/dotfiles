#!/bin/bash
if [ `uname -s` == "Linux" ]; then
    curl -kfSL https://dl.google.com/go/go1.10.linux-amd64.tar.gz -o temp.tar.gz
    sudo tar -C /usr/local -xzf temp.tar.gz
    rm -f temp.tar.gz
    export PATH=$PATH:/usr/local/go/bin
fi
if [ -f /usr/local/bin/apm ]; then
    apm update -y
    apm install -y go-plus go-imports go-rename file-icons
fi
if [ -z "$GOPATH" ]; then
    echo "GOPATH isn't set, skipping..."
else
    go get -u golang.org/x/tools/cmd/...
    go get -u github.com/golang/lint/golint
fi
