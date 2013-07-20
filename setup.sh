#!/bin/bash

rm ~/.bashrc
rm -rf ~/.vim
rm ~/.vimrc
ln -s bashrc ~/.bashrc
ln -s -r vim ~/.vim
ln -s vimrc ~/.vimrc
