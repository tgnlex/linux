. ~/.config/bash/startup.sh
. ~/.config/bash/options.sh
. ~/.config/bash/aliases.sh 
. ~/.config/bash/env.sh
. ~/.config/bash/completion.sh 
. ~/.config/bash/nvm.sh 
. ~/.config/bash/.inputrc

eval "$(basher init - bash)"    

__conda_setup="$('/root/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/root/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/root/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/root/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

