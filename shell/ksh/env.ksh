
# Environment variables. These could go in .profile if you prefer
export VISUAL=vi
export EDITOR=$VISUAL
export PAGER=less
export GZIP=-9


# specify search path for autoloadable functions
FPATH=/usr/share/ksh/functions:~/.func

# avoid certain file types in completion
FIGNORE='@(*.o|~*)'

# save more commands in history
HISTSIZE=500
HISTEDIT=$EDITOR

