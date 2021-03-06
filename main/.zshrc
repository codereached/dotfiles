TERM=xterm-256color

# Lines configured by zsh-newuser-install...
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt inc_append_history # save history right away
setopt share_history # share history between terminals

bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "${HOME}/.zshrc"

#autoload -Uz compinit
#compinit
# End of lines added by compinstall
source .shell/.zsh_exports
source .shell/.zsh_functions
source .shell/.zsh_aliases
#source .shell/.zsh_local_functions
#source .shell/.zsh_local_exports
fpath=( "$HOME/.shell/.zfunctions" $fpath )
source <(antibody init)
antibody bundle < ~/.shell/.zsh_plugins.txt
autoload -U promptinit; promptinit
prompt pure

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export VISUAL=vim #set vim as default
export ANSIBLE_INVENTORY=~/ansible_hosts

source $(brew --prefix nvm)/nvm.sh
 
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
