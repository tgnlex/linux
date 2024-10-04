. ~/bash/config/.inputrc 
. ~/bash/config/startup.sh
. ~/bash/config/environment.sh
. ~/bash/config/aliases.sh 
. ~/bash/config/completion.sh
. ~/bash/config/nvm.sh

if [ -f /etc/bashrc]; then 
  . /etc/bashrc 
fi
eval "$(basher init - bash)"

