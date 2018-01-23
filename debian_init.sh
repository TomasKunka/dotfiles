echo "-= Installing System Dependencies =-"
apt-get update
apt-get install -y curl zsh tmux neovim python3 python3-pip silversearcher-ag \ 
  ranger terminator clang ctags node

source init.sh
