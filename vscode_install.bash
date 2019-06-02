#!/bin/bash

if [ -x /usr/local/bin/code ]; then
    code --install-extension DavidAnson.vscode-markdownlint
    code --install-extension PeterJausovec.vscode-docker
    code --install-extension dbaeumer.vscode-eslint
    code --install-extension deerawan.vscode-dash
    code --install-extension donjayamanne.githistory
    code --install-extension eamodio.gitlens
    code --install-extension ipedrazas.kubernetes-snippets
    code --install-extension magicstack.MagicPython
    code --install-extension ms-python.python
    code --install-extension ms-vscode.Go
    code --install-extension ms-vscode.cpptools
    code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
    code --install-extension pkosta2005.heroku-command
    code --install-extension vscode-icons-team.vscode-icons
    code --install-extension tht13.python
    code --install-extension ms-vsliveshare.vsliveshare
    code --install-extension christian-kohler.npm-intellisense
    code --install-extension EditorConfig.EditorConfig
    code --install-extension eg2.tslint
    code --install-extension eg2.vscode-npm-script
    code --install-extension joaompinto.asciidoctor-vscode
    code --install-extension lextudio.restructuredtext
    code --install-extension Kasik96.swift
    code --install-extension shinnn.swiftlint


else
    echo "Visual Studio Code doesn't appear to be installed"
fi
