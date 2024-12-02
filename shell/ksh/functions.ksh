# some short functions

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
