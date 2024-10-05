. ~/.config/bash/.inputrc 
. ~/.config/bash/startup.sh
. ~/.config/bash/env.sh
. ~/.config/bash/aliases.sh 
. ~/.config/bash/completion.sh
. ~/.config/bash/nvm.sh

if [ -f /etc/bashrc]; then 
  . /etc/bashrc 
fi
eval "$(basher init - bash)"

