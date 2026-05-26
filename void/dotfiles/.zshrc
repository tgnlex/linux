
#=====================#
# SOURCE BASH ALIASES #
#=====================#
if [[ -e ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi


#===========#
# VARIABLES # 
#===========#
USE_POWERLINE="true"
HAS_WIDECHARS="false"
XONSHRC_SRC="/dotfiles/.xonshrc"  # XONSHRC MAIN SOURCE FILE
BASHRC_SRC="/dotfiles/.bashrc"    # BASHRC MAIN SOURCE FILE
TCSHRC_SRC="/dotfiles/.tcshrc"    # TCSHRC MAIN SOURCE FILE 
ZSHRC_SRC="/dotfiles/.zshrc"      # ZSHRC MAIN SOURCE FILE 
KSHRC_SRC="/dotfiles/.kshrc"      # KSHRC MAIN SOURCE FILE
VIMRC_SRC="/dotfiles/.vimrc"      # VIMRC MAIN SOURCE FILE
BASH_ALIASES_SRC="/dotfiles/.bash_aliases"   # BASH ALIASES SOURCE FILE 


#=========#
# VC INFO #
#=========#
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle 'vcs_info:git:*' formats '%b '
#========#
# PROMPT #
#========#

setopt PROMPT_SUBST
PROMPT='%F{blue}%m%f %F{green}%~$f %#'
