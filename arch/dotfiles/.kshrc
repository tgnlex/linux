# STARTUP #
echo "Welcome to ksh!"

# SHELL OPTIONS #
set -o allexport

# VARIABLES #
XONSHRC_SRC="/dotfiles/.xonshrc"  # XONSHRC MAIN SOURCE FILE
BASHRC_SRC="/dotfiles/.bashrc"    # BASHRC MAIN SOURCE FILE
TCSHRC_SRC="/dotfiles/.tcshrc"    # TCSHRC MAIN SOURCE FILE 
ZSHRC_SRC="/dotfiles/.zshrc"      # ZSHRC MAIN SOURCE FILE 
KSHRC_SRC="/dotfiles/.kshrc"      # KSHRC MAIN SOURCE FILE
VIMRC_SRC="/dotfiles/.vimrc"      # VIMRC MAIN SOURCE FILE
BASH_ALIASES_SRC="/dotfiles/.bash_aliases"   # BASH ALIASES SOURCE FILE 
XONSH_SCRIPTS_SRC="/configs/xsh/scripts.xsh" #

TTY=$(tty|cut -f3-4 -d/)
PWD=$(pwd)


if [[ -e ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

# PROMPT #
PS1='${LOGNAME}@${HOSTNAME} on ${TTY} [${PWD}]'

# SHELL FUNCTIONS #
function term {
  if [ $# -eq 1 ] then 
    echo $TERM 
    TERM=$1 
    export $TERM 
  fi 
  echo $TERM 
}

function back {
  cd $OLDPWD
  echo $CWD $OLDPWD
}

