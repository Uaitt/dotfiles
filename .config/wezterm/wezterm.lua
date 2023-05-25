local wezterm = require 'wezterm'

local config = {}

config.harfbuzz_features = { 'calt = 0', 'clig = 0', 'liga = 0' }
config.enable_scroll_bar = true
config.color_scheme = 'Dark+'
config.font_size = 12

return config
