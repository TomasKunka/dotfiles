#!/bin/bash
echo "-= Installing System Dependencies =-"
brew install zsh \
  tmux \
  neovim/neovim/neovim \
  python3 \
  the_silver_searcher \
  reattach-to-user-namespace \
  ctags \
  ranger \
  trash-cli

brew tap caskroom/cask
brew cask install iterm2
brew tap caskroom/fonts
brew cask install font-meslo-for-powerline

source init.sh
