# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PATH# 
export PATH='/usr/bin:/usr/bin/local:/bin'
# ENV VARIABLES #
export PAGER="less"
export EDITOR="nvim"
export JAVA='/usr/bin/java'
export GITHUB='git@github.com:tgnlex'
export DOTFILES_DIR='/dotfiles'
export CONFIGS_DIR='/configs'
export QT_SELECT=4

export XONSHRC_SRC="/dotfiles/.xonshrc"  # XONSHRC MAIN SOURCE FILE
export BASHRC_SRC="/dotfiles/.bashrc"    # BASHRC MAIN SOURCE FILE
export TCSHRC_SRC="/dotfiles/.tcshrc"    # TCSHRC MAIN SOURCE FILE 
export ZSHRC_SRC="/dotfiles/.zshrc"      # ZSHRC MAIN SOURCE FILE 
export KSHRC_SRC="/dotfiles/.kshrc"      # KSHRC MAIN SOURCE FILE
export VIMRC_SRC="/dotfiles/.vimrc"      # VIMRC MAIN SOURCE FILE
export BASH_ALIASES_SRC="/dotfiles/.bash_aliases"   # BASH ALIASES SOURCE FILE 
export XONSH_SCRIPTS_SRC="/configs/xsh/scripts.xsh" #


if [[ -e ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

# SHELL OPTIONS #

shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend

# COLOR FUNCTION #
colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			printf "  %-9s" "${seq0:-(default)}"
      printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}



[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
		;;
	screen*)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
		;;
esac

use_color=true

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.

safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] \
	&& type -P dircolors >/dev/null \
	&& match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

if ${use_color} ; then
	# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
	if type -P dircolors >/dev/null ; then
		if [[ -f ~/.dir_colors ]] ; then
			eval $(dircolors -b ~/.dir_colors)
		elif [[ -f /etc/DIR_COLORS ]] ; then
			eval $(dircolors -b /etc/DIR_COLORS)
		fi
	fi

	if [[ ${EUID} == 0 ]] ; then
		PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '
	else
		PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
	fi

	alias ls='ls --color=auto'
	alias grep='grep --colour=auto'
	alias egrep='egrep --colour=auto'
	alias fgrep='fgrep --colour=auto'
else
	if [[ ${EUID} == 0 ]] ; then
		# show root@ when we don't have colors
		PS1='\u@\h \W \$ '
	else
		PS1='\u@\h \w \$ '
	fi
fi

xhost +local:root > /dev/null 2>&1
