export CUSTOMER_HOME='/Users/rustybentley/Projects/Outpace/starwood/starwood_customer/universe'
export STAY_HOME='/Users/rustybentley/Projects/Outpace/starwood/starwood_stay'
#export STARWOOD_HOME=${CUSTOMER_HOME}
export STARWOOD_HOME=${STAY_HOME}

alias customer_home='export STARWOOD_HOME=${CUSTOMER_HOME}'
alias stay_home='export STARWOOD_HOME=${STAY_HOME}'

#common.aliases stuff
alias l='ls -lAF'
alias ll='l'

alias g='git '
alias ga='git add .'
alias gst='git status'
alias gac='ga; git commit'
alias gca='git commit -a -v'
alias gco='git checkout'
alias gl='git pull'
alias glr='git pull --rebase'
alias gp='git push'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gC='git commit -m'
alias glog='git log'
alias g-='git diff'
alias g-h='git diff HEAD'
alias git-curbranch='g?|grep "^# On branch "|cut -c 13-'
alias gM='git merge --no-ff'

alias gr='cd $STARWOOD_HOME'
#end common.aliases stuff

alias emacsnw='TERM=xterm-256color emacs -nw'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
complete -C aws_completer aws

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
source "$HOME/b16.sh"

if [ -e $HOME/.outpace/bashrc ]; then
  source "$HOME/.outpace/bashrc"
fi

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

export ENVIRONMENT_NAME=localdev
export EDITOR=vim
export ANSIBLE_COW_SELECTION=random

source /Users/rustybentley/Projects/personal.aliases
alias e=/Applications/Emacs.app/Contents/MacOS/Emacs
#alias go_cpappproc='ssh ubuntu@54.191.101.124'

if [[ -n $ENVIRONMENT_NAME || -n $SERVICE_NAME ]]; then
   export MACHINE_DESCRIPTION="$ENVIRONMENT_NAME $SERVICE_NAME:"
fi

PATH=/usr/local/sbin:/usr/local/bin:$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias dauth='derp authenticate && source $(derp envfile)'
