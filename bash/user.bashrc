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
alias venv='virtualenv'
alias pip='python3 -m pip'
alias python='python3'

########################
# environment variable settings
# user level

alias l='ls'
alias ll='ls -lrth'
alias lla='ls -lrha'
alias la='ls -a'
alias ..='cd ..'


alias mysqld_start='sudo /Library/StartupItems/MySQLCOM/MySQLCOM start'
alias mysqld_stop='sudo /Library/StartupItems/MySQLCOM/MySQLCOM stop'

if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

export JAVA_HOME=/Library/Java/JavaVirtualMachines/current.jdk/Contents/Home
export M2_HOME=/opt/apache-maven
export GRADLE_HOME=/opt/gradle
export SCALA_HOME=/opt/scala
export CATALINA_HOME=/opt/tomcat
export MYSQL_HOME=/usr/local/mysql
export PY3_HOME=/opt/py3
export PATH=$JAVA_HOME/bin:$PY3_HOME/bin:/usr/local/bin:$PATH:$M2_HOME/bin:$GRADLE_HOME/bin:$SCALA_HOME/bin:$CATALINA_HOME/bin:$MYSQL_HOME/bin

