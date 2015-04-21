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


source /etc/bash_completion.d/git

unset GNOME_KEYRING_CONTROL
unset SSH_ASKPASS

export CONDAHOME=/opt/miniconda3
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDAHOME/lib

export PATH=$CONDAHOME/bin:$PATH
