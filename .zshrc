alias ls='ls -G'
alias ll='ls -al'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'

PROMPT='%1d ▸ '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=%F{green}\$vcs_info_msg_0_%f
# PROMPT='%n $PWD'
zstyle ':vcs_info:git:*' formats '%b'

if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
fi

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
