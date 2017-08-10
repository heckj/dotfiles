#!/bin/bash
brew update
brew upgrade
brew doctor

nvm install stable

heroku update
