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

# hotfix after vi-mode plugin
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi
