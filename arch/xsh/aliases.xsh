
# ALIASES #
aliases['la'] = 'ls -a'
aliases['rf'] = 'rm -rf'
aliases['pip'] = 'xpip'
aliases['venv'] = 'bash /.venv/bin/activate'
aliases['unlock'] = 'chmod 777 -R'
aliases['git-save'] = 'git add . && git commit -a -m "auto-commit"'
aliases['git-update'] = 'git-save && git push'

aliases['edit-aliases'] = "$EDITOR $XONSH_ALIASES_SRC"
aliases['edit-script'] = "$EDITOR $XONSH_SCRIPT_SRC"
aliases['edit-config'] = "$EDITOR $XONSHRC_SRC"
aliases['edit-bashrc'] = "$EDITOR $BASHRC_SRC"

aliases['update-self'] = 'source ~/.xonshrc'
aliases['update-aliases'] = "cp -r $XONSH_ALIASES_SRC /root/ && cp -r $XONSH_ALIASES_SRC /home/alex/"
aliases['update-scripts'] = "cp -r $XONSH_SCRIPTS_SRC /root/ && cp -r $XONSH_SCRIPTS_SRC /home/alex/"
aliases['update-config'] = "cp -r $XONSHRC_SRC /root/ && cp -r $XONSHRC_SRC /home/alex/ && update-self"
aliases['update-xonsh'] = "update-aliases && update-scripts && update-config"
aliases['update-bashrc'] = "cp -r $BASHRC_SRC /root/ && cp -r $BASHRC_SRC /home/alex/ && bash source ~/.bashrc"
