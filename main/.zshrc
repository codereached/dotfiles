# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "${HOME}/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source .shell/.zsh_exports
source .shell/.zsh_functions

fpath=( "$HOME/.shell/.zfunctions" $fpath )
source <(antibody init)
antibody bundle < ~/.shell/.zsh_plugins.txt
autoload -U promptinit; promptinit
prompt pure
