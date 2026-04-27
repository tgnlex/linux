
export PATH="/bin:/usr/bin"
export CONFIG_NAME="alpine"
export REPOS_DIR="/home/alex/repos"
export CONFIG_DIR="${REPOS_DIR}/linux/alpine"
export GITHUB="git@github.com:tgnlex"
export PAGER="less"
export EDITOR="nvim"

alias la="ls -a"
alias rf="rm -rf"
alias unlock="chmod -R 777"
alias git-save="git add . && git commit -a -m 'auto-commit'"
alias git-update='git-save && git push'


get-date() {
  date > ./date.txt
}

