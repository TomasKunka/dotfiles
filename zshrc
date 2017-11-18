if [[ -f ~/.env.zsh ]]; then
    source ~/.env.zsh
fi

export VISUAL=vim
export EDITOR="$VISUAL"

if [[ ! -f ~/antigen.zsh ]]; then
    curl -L git.io/antigen > ~/antigen.zsh
fi

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
git
zsh-users/zsh-autosuggestions
zsh-users/zsh-syntax-highlighting
z
vi-mode
EOBUNDLES

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

alias rm=trash
