#!/usr/bin/bash

if [-f ~/.bash_alias]; then 
  ~/.bash_aliases 
fi

sl 
figlet -cl "Welcome TGN"
echo "Lets get to work!"

export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:/opt/nvim/"


