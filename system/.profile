# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

if [ -f $HOME/.kshrc -a -r $HOME/.kshrc ]; then 
				ENV=$HOME/.kshrc 
				export ENV 
fi 

