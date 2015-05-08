alias ls='ls -G'
alias ll='ls -al'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'

source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
PS1="/\W\[\033[32m\]\$(__git_ps1)\[\033[0m\]$ "
