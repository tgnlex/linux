# VARIABLES #
FPATH=/usr/share/ksh/functions:~/shell/ksh/functions
FIGNORE='@(*.o|~*)'

# OPTIONS #
ulimit -c 0 
set -o emacs -o trackall -o globstar

# FUNCTIONS #
function pid { ps -e | grep $@ | cut -d" " -f1; }
function term {
  if [ $# -eq 1 ]
  then 
      echo $TERM
      TERM=$1
      export TERM
  fi
  echo $TERM
}
function back {
  cd $OLDPWD
  echo $CWD $OLDPWD
}

# COMMANDS #
# empty line
empty() { echo $'\e[3J'; }

# man page viewer
mere() { nroff -man -Tman $1 | ${MANPAGER:-less}; }

# view/manipulate and export environment variables
setenv() {
        case $# in
        0) export ;;
        1) export "$1"= ;;
        *) export "$1"="$2" ;;
        esac
    }

#KEYMAP#
## Use keyboard trap to map keys to other keys
# note that escape sequences vary for different terminals 
trap '.sh.edchar=${keymap[${.sh.edchar}]:-${.sh.edchar}}' KEYBD
keymap=(
  [$'\eOD']=$'\eb'   # Ctrl-Left  -> move word left
  [$'\eOC']=$'\ef'   # Ctrl-Right -> move word right
  [$'\e[3~']=$'\cd'  # Delete     -> delete to right
  [$'\e[1~']=$'\ca'  # Home       -> move to beginning of line
  [$'\e[4~']=$'\ce'  # End        -> move to end of line
)


# startup #
echo "Welcome to K-SHELL"
