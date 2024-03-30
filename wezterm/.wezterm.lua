-- Pull in the wezterm API
local wezterm = require("wezterm")

local mux = wezterm.mux
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Catppuccin Latte"
-- config.font = wezterm.font 'FiraCodeNerdFont'
config.font = wezterm.font("InconsolataNerdFont")
-- config.font = wezterm.font 'JetBrains Mono'
-- this is for Windows
-- config.font = wezterm.font 'FiraCode Nerd Font Mono'

config.font_size = 18.0
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
	-- For Windows
	-- window:gui_window():maximize()
end)

return config
