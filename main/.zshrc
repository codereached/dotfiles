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
export PATH="$PATH:/Users/eperez/projects/istio/istio-1.0.4/bin"
# export PATH=$HOME/bin:$PATH
source .shell/.zsh_exports
source .shell/.zsh_functions
source .shell/.zsh_aliases
source .shell/.zsh_aliases
source .shell/.zsh_local_functions
fpath=( "$HOME/.shell/.zfunctions" $fpath )
source <(antibody init)
antibody bundle < ~/.shell/.zsh_plugins.txt
autoload -U promptinit; promptinit
prompt pure

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export VISUAL=vim #set vim as default
export ANSIBLE_INVENTORY=~/ansible_hosts


. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# export PATH="/usr/local/opt/mysql@5.5/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/mysql@5.5/lib"
# export CPPFLAGS="-I/usr/local/opt/mysql@5.5/include"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source $(brew --prefix nvm)/nvm.sh
 
