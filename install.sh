#!/usr/bin/env bash

SCRIPTPATH="$( cd "$( dirname "$0" )" && pwd )"

# ZSH
ln -s "$SCRIPTPATH/zshrc" ~/.zshrc
ln -s "$SCRIPTPATH/pure/pure.zsh" /usr/share/zsh/site-functions/prompt_pure_setup

# VIM
ln -s "$SCRIPTPATH/dotvim" ~/.vim
ln -s "$SCRIPTPATH/dotvim/vimrc" ~/.vimrc
vim +BundleInstall +qall

# Git config
ln -s "$SCRIPTPATH/gitconfig" ~/.gitconfig
