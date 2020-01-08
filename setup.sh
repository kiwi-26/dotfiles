#!/bin/bash

DOT_FILES=(.zshrc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# Zplugin
[ ! -d ~/.zplugin ] && mkdir ~/.zplugin && git clone https://github.com/zdharma/zplugin.git ~/.zplugin/bin
