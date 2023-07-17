local wezterm = require 'wezterm'
local config = {}

-- Maximize window on GUI startup
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- Appearance
config.color_scheme = 'Everforest Dark (Gogh)'
config.font_size = 13.5
config.font = wezterm.font('FiraCode Nerd Font')
config.harfbuzz_features = { 'calt = 0', 'clig = 0', 'liga = 0' } -- no ligatures
config.enable_scroll_bar = true
config.hide_tab_bar_if_only_one_tab = true
return config
