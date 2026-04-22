# STARTUP #
echo "Welcome to ksh!"

if [[ -e ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

# SHELL OPTIONS #
set -o allexport
# ENV VARIABLES #
TTY=$(tty|cut -f3-4 -d/)
PWD=$(pwd)

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

