#!/bin/sh

set -euxo pipefail

# This Script be used to create symbolic link in unix-* system and Cygwin.

uname=$(command uname)

# Create Git global config symbolic link to home directory.
if [ ! -f "${HOME}/.gitconfig" ]; then
    ln -s ~/.config/git/.gitconfig ~/.gitconfig
fi

# X windows config, only for Arch Linux
if [[ "$uname" != *CYGWIN* ]]; then
	ln -s ~/.config/X/.Xresources ~/.Xresources
    ln -s ~/.config/X/.xinitrc ~/.xinitrc
fi

# .zshrc
if [[ "$uname" == *CYGWIN* && ! -f "${HOME}/.zshrc" ]]; then
    ln -s ~/.config/zsh/.zshrc_cygwin ~/.zshrc
elif [[ "$uname" != *CYGWIN* && ! -f "${HOME}/.zshrc" ]]; then
    ln -s ~/.config/zsh/.zshrc ~/.zshrc
fi

if [ ! -f "${HOME}/.zsh_aliases" ]; then
    ln -s ~/.config/zsh/.zsh_aliases ~/.zsh_aliases
fi

# Mark git/.gitconfig as skip-worktree index
git update-index --skip-worktree git/.gitconfig

