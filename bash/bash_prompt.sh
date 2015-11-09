#!/bin/bash
#
# AUTHER:
#   Kunal
#
# DESCRIPTION:
#
#   Set the bash prompt according to:
#    * the active virtualenv
#    * the branch/status of the current git repository
#    * the return value of the previous command
#    * the fact you just came from Windows and are used to having newlines in
#      your prompts.
#
# USAGE:
#
#   1. Save this file as ~/.bash_prompt
#   2. Add the following line to the end of your ~/.bashrc or ~/.bash_profile:
#        . ~/.bash_prompt
#
# LINEAGE:
#
#   forked from
#
#   https://gist.github.com/insin/1425703

# The various escape codes that we can use to color our prompt.
        RED="\[\033[0;31m\]"
     YELLOW="\[\033[1;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[1;34m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
 LIGHT_PURPLE="\[\033[1;35m\]"
 COLOR_NONE="\[\e[0m\]"

# Detect whether the current directory is a git repository.
function is_git_repository {
  git branch > /dev/null 2>&1
}

# Determine the branch/state information for this git repository.
function set_git_branch {
  # Capture the output of the "git status" command.
  git_status="$(git status 2> /dev/null)"

  # Set color based on clean/staged/dirty.
  if [[ ${git_status} =~ "working directory clean" ]]; then
    state="${GREEN}"
  elif [[ ${git_status} =~ "Changes to be committed" ]]; then
    state="${YELLOW}"
  else
    state="${LIGHT_RED}"
  fi

  # this method is version independent
  local branch="$(git rev-parse --abbrev-ref HEAD)"
  nbr_commits_diff=""

  remote_name="$(git config branch.$branch.remote)"
  remote_name_ret_code=$?

  if [[ $remote_name_ret_code -eq 0 ]]; then
      remote="$remote_name/$branch"
      local nbr_commits_behind="$(git rev-list --count $branch..$remote)"
      local nbr_commits_ahead="$(git rev-list --count $remote..$branch)"
      if [ $nbr_commits_ahead -ne "0" ] && [ $nbr_commits_behind -ne "0" ]; then
          nbr_commits_diff="|+$nbr_commits_ahead|-$nbr_commits_behind"
      elif [ $nbr_commits_ahead -ne "0" ] && [ $nbr_commits_behind -eq "0" ]; then
          nbr_commits_diff="|+$nbr_commits_ahead"
      elif [ $nbr_commits_ahead -eq "0" ] && [ $nbr_commits_behind -ne "0" ]; then
          nbr_commits_diff="|-$nbr_commits_behind"
      fi
  else
      # leave me alone
      echo "(no remote available)" > /dev/null
  fi

  # Set the final branch string.
  BRANCH="${state}(${branch}${nbr_commits_diff})${COLOR_NONE} "
}

# Return the prompt symbol to use, colorized based on the return value of the
# previous command.
function set_prompt_symbol () {
  if test $1 -eq 0 ; then
      PROMPT_SYMBOL="${LIGHT_PURPLE}\$${COLOR_NONE}"
  else
      PROMPT_SYMBOL="${LIGHT_RED}\$${COLOR_NONE}"
  fi
}

# Determine active Python virtualenv details.
function set_virtualenv () {
  if test -z "$VIRTUAL_ENV" ; then
      PYTHON_VIRTUALENV=""
  else
      PYTHON_VIRTUALENV="${BLUE}[`basename \"$VIRTUAL_ENV\"`]${COLOR_NONE} "
  fi
}

# Set the full bash prompt.
function set_bash_prompt () {
  # Set the PROMPT_SYMBOL variable. We do this first so we don't lose the
  # return value of the last command.
  set_prompt_symbol $?

  # Set the PYTHON_VIRTUALENV variable.
  set_virtualenv

  # Set the BRANCH variable.
  if is_git_repository ; then
    set_git_branch
  else
    BRANCH=''
  fi

  # Set the bash prompt variable.
  PS1="${PYTHON_VIRTUALENV}${GREEN}\u ${YELLOW}\w${COLOR_NONE} ${BRANCH}${PROMPT_SYMBOL} "
}

# Tell bash to execute this function just before displaying its prompt.
PROMPT_COMMAND=set_bash_prompt
