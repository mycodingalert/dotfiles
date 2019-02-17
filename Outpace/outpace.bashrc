set background=dark

alias l='ls -lAF'
alias ll='l'
alias go_km='ssh ubuntu@172.31.25.28'
alias emacsnw='TERM=xterm-256color emacs -nw'
alias vi='vim'

complete -C aws_completer aws

if [ -e $HOME/.outpace/bashrc ]; then
  source "$HOME/.outpace/bashrc"
fi

# makefile autocomplete
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Solarized
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi
alias gcmb="git branch --merged | grep -Ev '(^\*|master)' | xargs git branch -d"

export ENVIRONMENT_NAME=localdev
export EDITOR=vim
export ANSIBLE_COW_SELECTION=random
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_NDK=$HOME/Library/Android/ndk_r10e

OUTPACE_ALIASES="$HOME/Projects/dotfiles/Outpace/outpace.aliases"
[[ -s $OUTPACE_ALIASES ]] && source $OUTPACE_ALIASES
PERSONAL_ALIASES="$HOME/Projects/dotfiles/personal.aliases"
[[ -s $PERSONAL_ALIASES ]] && source $PERSONAL_ALIASES

CLICOLOR=1

if [[ -n $ENVIRONMENT_NAME || -n $SERVICE_NAME ]]; then
  export MACHINE_DESCRIPTION="$ENVIRONMENT_NAME $SERVICE_NAME:"
fi

PATH=$PATH:/usr/local/sbin:/usr/local/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/usr/local/lib/ruby/gems/2.5.0/bin
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="/usr/local/bin/aws:$PATH"

[ -s "/Users/rustybentley/.scm_breeze/scm_breeze.sh" ] && source "/Users/rustybentley/.scm_breeze/scm_breeze.sh"
# override scm_breeze gr alias
alias gr='cd $PROJECT_HOME'

# Whenever a command is executed, write it to a global history
PROMPT_COMMAND="history -a ~/.bash_history.global; $PROMPT_COMMAND"
# On C-r set HISTFILE and run hh
export HH_CONFIG=hicolor
bind -x '"\C-r": "HISTFILE=~/.bash_history.global hh"'

# vi bindings in the shell!
set -o vi
