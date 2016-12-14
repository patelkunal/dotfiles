# customized command prompt
# uncomment only if you haven't set root.bashrc
. $HOME/apps/dotfiles/bash/bash_prompt.sh
# . $HOME/apps/dotfiles/bash/root.bashrc

source $HOME/apps/dotfiles/git/git-completion.bash

# alias
# user level
alias gs='git status'
alias ga='git add'
alias got='git'
alias gut='git'
alias dck='docker'
alias dckr='docker'

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

export JAVA_HOME=/opt/java
export M2_HOME=/opt/maven
export GRADLE_HOME=/opt/gradle
export SCALA_HOME=/opt/scala
export CATALINA_HOME=$HOME/apps/tomcat
export MYSQL_HOME=/usr/local/mysql
export PYTHON_HOME=/opt/py3
export PATH=$JAVA_HOME/bin:$PYTHON_HOME/bin:/usr/local/bin:$PATH:$M2_HOME/bin:$GRADLE_HOME/bin:$SCALA_HOME/bin:$CATALINA_HOME/bin:$MYSQL_HOME/bin

