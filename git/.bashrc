# .bashrc ($HOME/.bashrc)

# Prompt
function get_git_branch() {
  git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/"
}

RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
CYAN="\[\033[0;36m\]"
CLEAR="\[\033[0m\]"

PS1="$GREEN\u $RED\w $YELLOW\$(get_git_branch)\n$CYAN\$$CLEAR "

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Git
alias g='git'
alias gi='git init'
alias gst='git status'
alias gd='git diff'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcm='git checkout master'
alias gr='git remote'
alias gb='git branch'
alias gcp='git cherry-pick'
alias ga='git add'
alias gm='git merge'
alias grh='git reset HEAD'

# Lists
alias ll="ls -l"
alias la="ls -a"
alias vdir="ls --color=auto --format=vertical"
alias ldir="ls --color=auto --format=long"

# Copy
alias cp="cp -i"

# Move
alias mv="mv -i"

# Remove
alias rm="rm -i"
