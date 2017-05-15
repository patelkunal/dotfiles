# customized command prompt
. $HOME/apps/dotfiles/bash/bash_prompt.sh

source $HOME/apps/dotfiles/bash_completion.d/git-completion.bash
source $HOME/apps/dotfiles/bash_completion.d/gradle-completion.bash

# alias
# user level
alias gs='git status'
alias ga='git add'
alias got='git'
alias gut='git'
alias dck='docker'
alias dckr='docker'
alias dckrclean='docker rm $(docker ps -a -q)'

########################
# environment variable settings
# user level

alias l='ls'
alias ll='ls -lrth'
alias lla='ls -lrha'
alias la='ls -a'
alias ..='cd ..'
alias tailf='tail -500f'

# mac specific stuff 
if [[ "$(uname)" == "Darwin" && -f `brew --prefix`/etc/bash_completion ]]; then
	. `brew --prefix`/etc/bash_completion
fi

export CATALINA_HOME=$HOME/apps/tomcat
export PYTHON_HOME=/opt/py3
export PATH=$PYTHON_HOME/bin:/usr/local/bin:$PATH:$CATALINA_HOME/bin

