local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' } -- disable ligatures
config.enable_scroll_bar = true
return config
