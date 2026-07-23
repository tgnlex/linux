# ~/.config/nushell/config.nu
$env.PROMPT_COMMAND_RIGHT = {||}
$env.config.buffer_editor = ["vim"]

alias la = ls -a
alias update-nu = cp /config/config/config.nu ~/.config/nushell/
alias edit-nu = config nu
