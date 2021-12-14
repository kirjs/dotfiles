#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Bunch of symlinks

#ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
#ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~
#ln -sfv "$DOTFILES_DIR/runcom/.tmux.conf" ~
#ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
#ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
#ln -sfv "$DOTFILES_DIR/git/.gitsettings" ~

# Package managers & packages
#
source "$DOTFILES_DIR/install/brew.sh"
source "$DOTFILES_DIR/install/node.sh"
#. "$DOTFILES_DIR/install/bash.sh"
#. "$DOTFILES_DIR/install/node.sh"
#. "$DOTFILES_DIR/install/vundle.sh"
#
#if [ "$(uname)" == "Darwin" ]; then
#    . "$DOTFILES_DIR/install/brew-cask.sh"
#fi
#
#if [ -d "$EXTRA_DIR" -a -f "$EXTRA_DIR/install.sh" ]; then
#    . "$EXTRA_DIR/install.sh"
#fi