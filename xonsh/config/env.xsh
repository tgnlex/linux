if ON_LINUX or ON_DARWIN:
    # Add default bin paths.
    for p in [p'/home/linuxbrew/.linuxbrew/bin', p'~/.local/bin'.expanduser(), p'/opt/homebrew/opt/coreutils/libexec/gnubin']:
        if p.exists():
            $PATH.append(str(p))  # or `$PATH.prepend()`


