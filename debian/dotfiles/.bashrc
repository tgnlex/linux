. ~/.bash_aliases

# VARIABLES #
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth
HISTEDIT=$EDITOR
# ENV VAR #

export VISUAL=vim
export EDITOR=nvim || vim
export PAGER=less
export GZIP=-9

export TERM=xterm-color 
export LSCOLORS=DxGxcxdxCxexegedavagacad

export PATH="$PATH:${HOME}/bin:/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/opt/nvim/"
export PYTHONPATH="$PYTHONPATH:$HOME/.python/site-packages/"
export SCRIPTS_DIR=$SCRIPTS:/file/scripts




# COLOR PROMPT #
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
# STATUS  #

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


# STARTUP #
echo "Welcome to the Bourne-Again Shell (BASH)"
