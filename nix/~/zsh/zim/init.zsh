# FILE AUTOMATICALLY GENERATED FROM /root/.zimrc
# EDIT THE SOURCE FILE AND THEN RUN zimfw build. DO NOT DIRECTLY EDIT THIS FILE!

if [[ -e ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]] zimfw() { source "~/zsh/zim/zimfw.zsh" "${@}" }
fpath=("/etc/nixos/~/zsh/zim/modules/git/functions" "/etc/nixos/~/zsh/zim/modules/utility/functions" "/etc/nixos/~/zsh/zim/modules/duration-info/functions" "/etc/nixos/~/zsh/zim/modules/git-info/functions" "/etc/nixos/~/zsh/zim/modules/pvenv/functions" "/etc/nixos/~/zsh/zim/modules/zsh-completions/src" ${fpath})
autoload -Uz -- git-alias-lookup git-branch-current git-branch-delete-interactive git-branch-remote-tracking git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw duration-info-precmd duration-info-preexec coalesce git-action git-info pvenv
source "/etc/nixos/~/zsh/zim/modules/environment/init.zsh"
source "/etc/nixos/~/zsh/zim/modules/git/init.zsh"
source "/etc/nixos/~/zsh/zim/modules/input/init.zsh"
source "/etc/nixos/~/zsh/zim/modules/termtitle/init.zsh"
source "/etc/nixos/~/zsh/zim/modules/utility/init.zsh"
source "/etc/nixos/~/zsh/zim/modules/duration-info/init.zsh"
source "/etc/nixos/~/zsh/zim/modules/asciiship/asciiship.zsh-theme"
source "/etc/nixos/~/zsh/zim/modules/ruby/init.zsh"
source "/etc/nixos/~/zsh/zim/modules/completion/init.zsh"
source "/etc/nixos/~/zsh/zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "/etc/nixos/~/zsh/zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh"
source "/etc/nixos/~/zsh/zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh"
