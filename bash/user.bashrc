# customized command prompt
# uncomment only if you haven't set root.bashrc
. $HOME/apps/dotfiles/bash/bash_prompt/bash_prompt.sh
# . $HOME/apps/dotfiles/bash/root.bashrc

# alias
# user level
alias gs='git status'
alias ga='git add'
alias got='git'
alias venv='virtualenv'

########################
# environment variable settings
# user level

unset GNOME_KEYRING_CONTROL

export PYHOME=/opt/mconda-py3
export PATH=$PYHOME/bin:$PATH
