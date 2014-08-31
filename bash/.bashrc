# alias

# user level
alias gs='git status'

# common - can be put under user level as well - based on machine
alias l='ls'
alias ll='ls -lrth'
alias lla='ls -lrtha'
alias la='ls -a'
alias ..='cd ..'

alias start_tomcat='/opt/tomcat/bin/startup.sh'
alias stop_tomcat='/opt/tomcat/bin/shutdown.sh'

########################
# environment variable settings

# root level
export JAVA_HOME=/opt/java
export ANT_HOME=/opt/ant
export M2_HOME=/opt/maven
export GRADLE_HOME=/opt/gradle
export CATALINA_HOME=/opt/tomcat7
export PATH=$JAVA_HOME/bin:$PATH:$ANT_HOME/bin:$GRADLE_HOME/bin:$M2_HOME/bin

