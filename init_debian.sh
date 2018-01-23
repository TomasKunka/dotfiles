#!/bin/bash
echo "-= Installing System Dependencies =-"

apt-get update && apt-get install -y \
  curl \
  zsh \
  tmux \
  neovim \
  python3 \
  python3-pip \
  silversearcher-ag \
  ranger \
  terminator \
  clang \
  ctags \
  trash-cli

# download powerline font
curl -fLo /usr/share/fonts/"Meslo LG L DZ Regular for Powerline.ttf" \
  https://github.com/powerline/fonts/blob/master/\
	Meslo%20Dotted/Meslo%20LG%20L%20DZ%20Regular%20for%20Powerline.ttf\?raw\=true

source init.sh
