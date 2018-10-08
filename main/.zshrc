TERM=xterm-256color

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt inc_append_history # save history right away
setopt share_history # share history between terminals

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
source .shell/.zsh_aliases

fpath=( "$HOME/.shell/.zfunctions" $fpath )
source <(antibody init)
antibody bundle < ~/.shell/.zsh_plugins.txt
autoload -U promptinit; promptinit
prompt pure

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export VISUAL=vim #set vim as default