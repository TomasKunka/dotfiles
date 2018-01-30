echo "-= Installing System Dependencies =-"

apt-get update && apt-get install -y \
  curl \
  zsh \
  tmux \
  python3 \
  python3-pip \
  silversearcher-ag \
  ranger \
  rxvt-unicode-256color\
  clang \
  ctags \
  trash-cli \
  xclip

# install neovim form source
# build prerequisites
apt-get install -y \
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
make && make install
cd && rm -rf neovim

# install tmux from source
apt-get install -y \
  libevent-dev \
  libncurses-dev

VERSION=2.6 && mkdir ~/tmux-src && \
  curl -L https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz \
  | tar xvz -C ~/tmux-src && cd ~/tmux-src/tmux*
./configure && make -j"$(nproc)" && make install
cd && rm -rf ~/tmux-src

for type in Regular Bold; do
    wget -O ~/.local/share/fonts/FiraCode-${type}.ttf \
    "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true";
done
fc-cache -f 

source init.sh
