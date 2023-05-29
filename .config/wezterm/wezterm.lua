local wezterm = require 'wezterm'

local config = {}

-- Maximize window on GUI startup
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- Appearance
config.color_scheme = 'Dark+'
config.font_size = 13
config.harfbuzz_features = { 'calt = 0', 'clig = 0', 'liga = 0' }
config.enable_scroll_bar = true


return config
