

USE_POWERLINE="true"
HAS_WIDECHARS="false"
XONSHRC_SRC="/dotfiles/.xonshrc"  # XONSHRC MAIN SOURCE FILE
BASHRC_SRC="/dotfiles/.bashrc"    # BASHRC MAIN SOURCE FILE
TCSHRC_SRC="/dotfiles/.tcshrc"    # TCSHRC MAIN SOURCE FILE 
ZSHRC_SRC="/dotfiles/.zshrc"      # ZSHRC MAIN SOURCE FILE 
KSHRC_SRC="/dotfiles/.kshrc"      # KSHRC MAIN SOURCE FILE
VIMRC_SRC="/dotfiles/.vimrc"      # VIMRC MAIN SOURCE FILE
BASH_ALIASES_SRC="/dotfiles/.bash_aliases"   # BASH ALIASES SOURCE FILE 
XONSH_SCRIPTS_SRC="/configs/xsh/scripts.xsh" #



if [[ -e ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
