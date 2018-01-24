#!/bin/bash
# Link git-ified vimrc to normal .vimrc
ln -s ~/.vim/vimrc ~/.vimrc

# Setup nvim link
mkdir -p ~/.config/nvim
ln -s ~/.vim/vimrc ~/.config/nvim/init.vim

vim +PlugInstall +qall
