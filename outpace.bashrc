export NGINX_URL=http://localhost:7999
export NGINX_PUBLIC_URL=http://localhost:8080

#common.aliases stuff
alias l='ls -lAF'
alias ll='l'
#end common.aliases stuff

alias go_ftp='ssh ubuntu@54.200.128.164'
alias go_km='ssh ubuntu@172.31.25.28'

alias emacsnw='TERM=xterm-256color emacs -nw'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
complete -C aws_completer aws

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"

if [ -e $HOME/.outpace/bashrc ]; then
  source "$HOME/.outpace/bashrc"
fi

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Solarized
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

export ENVIRONMENT_NAME=localdev
export EDITOR=vim
export ANSIBLE_COW_SELECTION=random

source /Users/rustybentley/Projects/Outpace/outpace.aliases
source /Users/rustybentley/Projects/personal.aliases
alias e=/Applications/Emacs.app/Contents/MacOS/Emacs

# Base16 Shell
BASE16_SHELL="$HOME/Projects/base16-shell/base16-atelierheath.dark.sh"
[[ -s $BASE16_SHELL && -n "$ITERM_SESSION_ID" ]] && source $BASE16_SHELL

if [[ -n $ENVIRONMENT_NAME || -n $SERVICE_NAME ]]; then
   export MACHINE_DESCRIPTION="$ENVIRONMENT_NAME $SERVICE_NAME:"
fi

PATH=/usr/local/sbin:/usr/local/bin:$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -s "/Users/rustybentley/.scm_breeze/scm_breeze.sh" ] && source "/Users/rustybentley/.scm_breeze/scm_breeze.sh"
# override scm_breeze gr alias
alias gr='cd $STARWOOD_HOME'
