
aliases | = {
 'ls': "ls -a",
 'rmrf': 'rm -rf',
 'xonsh-update': 'xpip install -U pip && xpip install -U --force-reinstall git+https://github.com/xonsh/xonsh',
}

@aliases.register("xc")
  def _alias_xc():
        """Get xonsh context."""    
        print('xpython:', X.imp.sys.executable, '#', $(xpython -V).strip())
        print('xpip:', $(which xpip).strip())  # xpip - xonsh's builtin to install packages in current session xonsh environment.
        print('')
        print('xonsh:', $(which xonsh))
        print('python:', $(which python), '#' ,$(python -V).strip())
        print('pip:', $(which pip))
        if _which('pytest'):
            print('pytest:', $(which pytest))
        print('')
        envs = ['CONDA_DEFAULT_ENV']
        for ev in envs:
            if (val := X.env.get(ev)):
                print(f'{ev}:', val)

