#!/bin/bash
brew update
brew upgrade
brew doctor

npm -g update npm
npm -g update

heroku update

rvm get stable
rvm cleanup all

gem update
