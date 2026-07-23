# STARTUP #
echo "Welcome to ksh!"

# SHELL OPTIONS #
set -o allexport

# VARIABLES #
XONSHRC_SRC="/config/dotfiles/.xonshrc"  # XONSHRC MAIN SOURCE FILE
BASHRC_SRC="/config/dotfiles/.bashrc"    # BASHRC MAIN SOURCE FILE
TCSHRC_SRC="/config/dotfiles/.tcshrc"    # TCSHRC MAIN SOURCE FILE 
ZSHRC_SRC="/config/dotfiles/.zshrc"      # ZSHRC MAIN SOURCE FILE 
KSHRC_SRC="/config/dotfiles/.kshrc"      # KSHRC MAIN SOURCE FILE
VIMRC_SRC="/config/dotfiles/.vimrc"      # VIMRC MAIN SOURCE FILE
BASH_ALIASES_SRC="/config/dotfiles/.bash_aliases"   # BASH ALIASES SOURCE FILE 

TTY=$(tty|cut -f3-4 -d/)
PWD=$(pwd)


if [[ -e ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

# PROMPT #
PS1='${LOGNAME}@${HOSTNAME} on ${TTY} [${PWD}]'

# SHELL FUNCTIONS #
function term {
  if [ $# -eq 1 ]; then 
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

