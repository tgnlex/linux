local wezterm = require('wezterm')
local term = require("config.term")
local theme = require("config.theme")
-- ALIASES --
local font = theme.fonts.primary
local opts = term.opts

local m = {}
function m.initialize(config)
  -- ENVIRONMENT VARIABLES --
  config.set_environment_variables = term.env
  -- TERMINAL OPTIONS -- 
  ---- TERM OPTS: GENERAL ----
  config.check_for_updates = opts.check_updates
  config.scrollback_lines = opts.sb_lines 
  config.warn_about_missing_glyphs = opts.glyph_warning
  config.enable_scroll_bar = opts.scroll 
  ---- TERM OPTS: TAB BAR ----
  config.enable_tab_bar = opts.tbar_enable
  config.use_fancy_tab_bar = opts.tbar_fancy
  config.hide_tab_bar_if_only_one_tab = opts.tbar_auto
  ---- TERM OPTS: WINDOW ----


  
  -- UI THEME SETTINGS --
  config.window_background_opacity = theme.opacity
  config.color_scheme = theme.colors.primary
  config.font = wezterm.font(font.key, font.opts)
  config.font_size = font.size
end

return m
