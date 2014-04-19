#!/bin/bash
brew update
brew upgrade
brew doctor

npm -g update

rvm repair all

gem update
