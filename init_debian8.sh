echo "-= Installing System Dependencies =-"

apt-get update && apt-get install -y \
  curl \
  zsh \
  tmux \
  python3 \
  python3-pip \
  silversearcher-ag \
  ranger \
  terminator \
  clang \
  ctags \
  trash-cli

# install neovim form source
# build prerequisites
apt-get install \
  ninja-build \
  libtool \
  libtool-bin \
  autoconf \
  automake \
  cmake \
  g++ \
  pkg-config \
  unzip

# install
git clone https://github.com/neovim/neovim.git ~/neovim && cd ~/neovim
VERSION=0.2.2 && git checkout v${VERSION}
./configure && make -j"$(nproc)" && make install
cd && rm -rf neovim

# install tmux from source
apt-get install \
  libevent-dev \
  libncurses-dev

VERSION=2.6 && mkdir ~/tmux-src && curl -L https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz \
 | tar xvz -C ~/tmux-src && cd ~/tmux-src/tmux*
./configure && make -j"$(nproc)" && make install
cd && rm -rf ~/tmux-src

# download powerline font
curl -fLo /usr/share/fonts/"Meslo LG L DZ Regular for Powerline.ttf" \
  https://github.com/powerline/fonts/blob/master/\
	Meslo%20Dotted/Meslo%20LG%20L%20DZ%20Regular%20for%20Powerline.ttf\?raw\=true

source init.sh
