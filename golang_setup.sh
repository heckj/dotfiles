#!/bin/bash

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
