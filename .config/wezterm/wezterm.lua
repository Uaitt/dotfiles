local wezterm = require 'wezterm'
local config = {}

-- Maximize window on GUI startup
wezterm.on('gui-startup', function(cmd)
  local _, _, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- Colorscheme
config.color_scheme = "Everforest Dark"

-- Fonts
config.font_size = 14
config.font = wezterm.font('FiraCode Nerd Font')
config.harfbuzz_features = { 'calt = 0', 'clig = 0', 'liga = 0' } -- no ligatures

-- Appearance 
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

return config

