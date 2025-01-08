
function pid { ps -e | grep $@ | cut -d" " -f1; }
function term {
  if [ $# -eq 1 ]
  then 
      echo $TERM
      TERM=$1
      export TERM
  fi
  echo $TERM
}
function back {
  cd $OLDPWD
  echo $CWD $OLDPWD
}
