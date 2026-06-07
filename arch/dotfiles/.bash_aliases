alias la="ls -a"
alias rm="rm -rf"
alias campfire="aafire -driver curses"
alias cp="cp -r"
alias stdin="/dev/stdin"
alias stdout="/dev/stdout"
alias zero="/dev/zero"
alias bits="/dev/bits"
alias null="/dev/null"
alias q='exit'
alias repos='cd /repos/'
alias t='time'
alias k='kill'
alias unlock='chmod -R 755'
alias python='python3'
alias venv='source /.venv/bin/activate'
alias home='cd ~'
alias root='cd /'
alias edit='nvim'
alias gentags='ctags -R .'
alias ssh-gh-test='ssh -T git@github.com'
alias github="echo $GITHUB"
alias columns="tput columns"
alias git-save='git add * && git commit -a -m "auto-commit"'
alias git-update='git-save && git push'
alias runescape="flatpak run com.adamcake.Bolt --no-sandbox &"
alias dev="npm run dev"
alias sst="ss -tulpn" # check ports
alias nc-listen="nc -lvp"
alias build="gcc ./src/main.c -o ./program"
alias install="pacman -Sy"
alias uninstall="pacman -R"
alias sync-all="pacman -Syu"
alias gen-docs=". /sh/doc.sh"
alias web="firefox &"
alias edit-xonshrc="$EDITOR $XONSHRC_SRC"

alias edit-bashrc="$EDITOR $BASHRC_SRC"
alias edit-tcshrc="$EDITOR $TCSHRC_SRC"
alias edit-zshrc="$EDITOR $ZSHRC_SRC"
alias edit-kshrc="$EDITOR $KSHRC_SRC"
alias edit-vimrc="$EDITOR $VIMRC_SRC"

alias edit-xonsh-scripts="$EDITOR $XONSH_SCRIPT_SRC"
alias edit-bash-aliases="$EDITOR $BASH_ALIASES_SRC"

alias refresh-bash="source ~/.bashrc"

alias update-bash-aliases="cp -r $BASH_ALIASES_SRC /root && cp -r $BASH_ALIASES_SRC /home/alex/"
alias update-xonsh="cp -r $XONSHRC_SRC /root/ && cp -r $XONSHRC_SRC /home/alex/"
alias update-bash="cp -r $BASHRC_SRC /root/ && cp -r $BASHRC_SRC /home/alex/"
alias update-tcsh="cp -r $TCSHRC_SRC /root/ && cp -r $BASHRC_SRC /home/alex/"
alias update-zsh="cp -r $ZSHRC_SRC /root/ && cp -r $BASHRC_SRC /home/alex/"
alias update-ksh="cp -r $KSHRC_SRC /root/ && cp -r $BASHRC_SRC /home/alex/"
alias update-shells="update-ksh && update-zsh && update-tcsh && update-bash && update-bash-aliases && update-xonsh"
alias update-vim="cp -r $VIMRC_SRC /root/ && cp -r $BASHRC_SRC /home/alex"
alias update-all="update-vim && update-shells"


alias upgrade-system="pacman -Syu"
