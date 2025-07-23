alias gs='git status -sb'
alias gd='git diff'
alias gl="git log --graph --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(bold white)— %an%C(reset)' --abbrev-commit"
alias glg='git log'
alias gds='git diff --staged'
alias gla='git log --all'
alias gco='git checkout'
alias gaa='git add .'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gr='git restore'
alias grs='git restore --staged'
alias grb='git rebase -i'
alias gpr='git pull --rebase'

alias lah='eza -lah'
alias ll='lah'

alias cd='z'
alias v='nvim'

if [[ -n "$WSL_DISTRO_NAME" ]]; then
  # Makes git much faster in WSL, but we have to push/pull with /usr/bin/git
  alias git='git.exe'
fi

# Does not handle special characters in property name
# See https://github.com/jqlang/jq/issues/243#issuecomment-48470943 if I need this
jq_structure() {
    jq -r '[path(..)|map(if type=="number" then "[]" else tostring end)|join(".")|split(".[]")|join("[]")]|unique|map("."+.)|.[]' "$@"
}
