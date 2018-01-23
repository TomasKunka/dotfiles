#!/bin/bash
echo "-= Installing System Dependencies =-"
apt-get update && apt-get install -y software-properties-common
add-apt-repository ppa:neovim-ppa/stable
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

source init.sh
