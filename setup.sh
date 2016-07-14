#!/bin/bash

mkdir -p ~/.vim/bundle
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -svf ${PWD}/_vimrc ~/._vimrc
vim +PluginInstall +qall
