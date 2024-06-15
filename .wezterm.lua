local wezterm = require('wezterm')

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Macchiato'
config.colors = {
  background = '#24273a'
}
config.font = wezterm.font('FiraCode Nerd Font')
config.font_size = 16
config.line_height = 1.3
config.enable_tab_bar = false
config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

wezterm.on('format-window-title', function()
  return 'WezTerm'
end)

return config
