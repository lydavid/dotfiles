alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gds='git diff --staged'
alias gla='git log --all'
alias gco='git checkout'
alias gaa='git add .'
alias gcm='git commit -m'
alias gca='git commit --amend'

alias lah='eza -lah'
alias ll='lah'

alias cd='z'

if [[ -n "$WSL_DISTRO_NAME" ]]; then
  # Makes git much faster in WSL, but we have to push/pull with /usr/bin/git
  alias git='git.exe'
fi
