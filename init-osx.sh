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
  fzf

# addition tools
# brew cask install visual-studio-code   
# brew cask install google-chrome
# brew cask install dash
# brew cask install flux
# brew cask install vlc
# brew cask install dropbox
# brew cask install slack
# brew install docker

# brew tap caskroom/cask
# brew cask install iterm2
# brew tap caskroom/fonts
# brew cask install font-fira-code

source init.sh
