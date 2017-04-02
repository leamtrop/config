#!/bin/sh

# This Script be used to create symbolic link in unix-* system.

# Create Git global config symbolic link to home directory.
ln -s ~/.config/git/.gitconfig ~/.gitconfig

# X windows config
ln -s ~/.config/X/.Xresources ~/.Xresources
ln -s ~/.config/X/.xinitrc ~/.xinitrc

# .zshrc
ln -s ~/.config/zsh/.zshrc ~/.zshrc

