source ~/.bash_aliases
# ENV VAR #
export ZSH="$HOME/.oh-my-zsh"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

export VISUAL=vim
export EDITOR=nvim || vim
export PAGER=less
export GZIP=-9

export TERM=xterm-color 
export LSCOLORS=DxGxcxdxCxexegedavagacad

export PATH="$PATH:${HOME}/bin:/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/opt/nvim/"
export PYTHONPATH="$PYTHONPATH:$HOME/.python/site-packages/"
export SCRIPTS_DIR=$SCRIPTS:/file/scripts
# OPTIONS #
bindkey -v
setopt HIST_IGNORE_ALL_DUPS
setopt CORRECT 
# PROMPT BAR #
SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]'

# Startup #
echo "Welcome to Z-Shell. (ZSH)!"
