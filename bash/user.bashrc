# customized command prompt
# uncomment only if you haven't set root.bashrc
. $HOME/apps/dotfiles/bash/bash_prompt.sh
# . $HOME/apps/dotfiles/bash/root.bashrc

# alias
# user level
alias gs='git status'
alias ga='git add'
alias got='git'
alias gut='git'
alias venv='virtualenv'

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

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export M2_HOME=/opt/apache-maven
export GRADLE_HOME=/opt/gradle
export CATALINA_HOME=/opt/tomcat
export MYSQL_HOME=/usr/local/mysql
export PATH=$JAVA_HOME/bin:/usr/local/bin:$PATH:$M2_HOME/bin:$GRADLE_HOME/bin:$CATALINA_HOME/bin:$MYSQL_HOME/bin

# . /Users/kunal_patel/apps/dotfiles/bash/user.bashrc

