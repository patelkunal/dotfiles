# customized command prompt
# . $HOME/apps/dotfiles/bash/bash_prompt/bash_prompt.sh

# alias

# user level alias
alias l='ls'
alias ll='ls -lrth'
alias lla='ls -lrha'
alias la='ls -a'
alias ..='cd ..'

alias start-tomcat='/opt/tomcat/bin/startup.sh'
alias stop-tomcat='/opt/tomcat/bin/shutdown.sh'
alias tail-tomcat-log='tail -100f /opt/tomcat/logs/catalina.out'

########################
# environment variable settings

# root level - common for all users
export JAVA_HOME=/opt/java
export GROOVY_HOME=/opt/groovy
export ANT_HOME=/opt/ant
export M2_HOME=/opt/maven
export GRADLE_HOME=/opt/gradle
export CATALINA_HOME=/opt/tomcat
export PATH=$JAVA_HOME/bin:$PATH:$ANT_HOME/bin:$GRADLE_HOME/bin:$M2_HOME/bin:$GROOVY_HOME/bin

