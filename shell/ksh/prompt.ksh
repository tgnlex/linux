
# keep a shortened version of the current directory for the prompt
function _cd {
  typeset -n dir=HOME

  "cd" "$@"

  if [[ $PWD = $HOME* && $HOME != / ]]; then
    _pwd=\~${PWD#$HOME}
    return
  fi

  for dir in JAVA_HOME GNOMEDIR; do
    if [[ -n $dir && $PWD = $dir* ]]; then
      _pwd="\$${!dir}${PWD#$dir}"
      return
    fi
  done
  _pwd="$PWD"
}
alias cd=_cd
_cd .

# put the current directory and history number in the prompt
PS1='$_pwd [!]\$ '
