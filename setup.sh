#!/bin/bash

DOT_FILES=(.zshrc)
WORK_DIR=`pwd`

for file in ${DOT_FILES[@]}
do
    ln -s $WORK_DIR/$file $HOME/$file
done

# Zplugin
[ ! -d ~/.zplugin ] && mkdir ~/.zplugin && git clone https://github.com/zdharma/zplugin.git ~/.zplugin/bin
