local wezterm = require 'wezterm'
local core = require('core')
local config = wezterm.config_builder()
config.set_environment_variables = core.variables
config.color_scheme = core.theme

return config;
