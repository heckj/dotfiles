#!/bin/bash
brew update
brew upgrade
brew doctor

npm -g update npm
npm -g update

heroku update

rvm repair all

gem update
