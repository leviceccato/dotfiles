local wezterm = require('wezterm')

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Macchiato'
config.colors = {
  background = '#111111'
}
config.font = wezterm.font('FiraCode Nerd Font')
config.font_size = 16
config.line_height = 1.3
config.enable_tab_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

wezterm.on('format-window-title', function()
  return 'WezTerm'
end)

return config
