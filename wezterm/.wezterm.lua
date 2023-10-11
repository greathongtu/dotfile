-- Pull in the wezterm API
local wezterm = require 'wezterm'

local mux = wezterm.mux
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.color_scheme = 'OneDark (base16)'
-- config.font = wezterm.font 'JetBrains Mono'
config.font = wezterm.font 'FiraCodeNerdFont'

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

return config

