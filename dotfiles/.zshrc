source ~/sh/startup.sh
source ~/sh/aliases.sh
source ~/sh/env.sh 
source ~/sh/conda.sh
source ~/zsh/zimconf.zsh 

bindkey -v
setopt HIST_IGNORE_ALL_DUPS
setopt CORRECT

SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '
WORDCHARS=${WORDCHARS//[\/]}
# ------------------------------
# Post-init module configuration
# ------------------------------
zmodload -F zsh/terminfo +p:terminfo
for key ('^[[A' '^P' ${terminfo[kcuu1]}) bindkey ${key} history-substring-search-up
for key ('^[[B' '^N' ${terminfo[kcud1]}) bindkey ${key} history-substring-search-down
for key ('k') bindkey -M vicmd ${key} history-substring-search-up
for key ('j') bindkey -M vicmd ${key} history-substring-search-down
unset key

