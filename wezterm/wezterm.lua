local wezterm = require 'wezterm'
local configuration = require('config')
local terminal = {}

if wezterm.config_builder then 
    terminal = wezterm.config_builder()
end

configuration.initialize(terminal)


return terminal
