#!/bin/bash

if [ -x /usr/local/bin/code ]; then
    code --install-extension DavidAnson.vscode-markdownlint
    code --install-extension PeterJausovec.vscode-docker
    code --install-extension brendandburns.vs-kubernetes
    code --install-extension dbaeumer.vscode-eslint
    code --install-extension deerawan.vscode-dash
    code --install-extension donjayamanne.githistory
    code --install-extension eamodio.gitlens
    code --install-extension eg2.vscode-npm-script
    code --install-extension ipedrazas.kubernetes-snippets
    code --install-extension lukehoban.Go
    code --install-extension magicstack.MagicPython
    code --install-extension ms-python.python
    code --install-extension ms-vscode.azure-account
    code --install-extension pkosta2005.heroku-command
    code --install-extension robertohuertasm.vscode-icons
    code --install-extension tht13.python
else
    echo "Visual Studio Code doesn't appear to be installed"
fi
