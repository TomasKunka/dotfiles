# !/bin/bash

echo "-= Upgrading Vim with Package Manager =-"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim
pip3 install flake8
pip3 install jedi


echo "-= Assigning Zsh as Default Shell =-"
chsh -s $(which zsh)

rm -rf ~/.vim ~/.vimrc ~/.vimrc.bundles ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null
mkdir -p ~/.config ~/.config/nvim

echo "-= Symlinking new configs =-"

ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim
ln -s ~/dotfiles/vimrc.bundles ~/.vimrc.bundles

unamestr=$(uname)
if [[ "$unamestr" == 'Darwin' ]]; then
  ln -s ~/dotfiles/tmux-osx.conf ~/.tmux-osx.conf
else 
  ln -s ~/dotfiles/tmux-linux.conf ~/.tmux-linux.conf
  ln -sf ~/dotfiles/Xresources ~/.Xresources
fi

echo "-= Log out and Log Back In to see changes =-"
