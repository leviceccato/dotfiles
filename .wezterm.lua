local wezterm = require('wezterm')

local config = wezterm.config_builder()

config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.window_padding = {
  top = 10,
  left = 10,
  right = 10,
  bottom = 10,
}
config.color_scheme = 'Monokai Pro (Gogh)'
config.colors = {
  background = '#222222',
}
config.window_frame = {
  active_titlebar_bg = '#222222',
  inactive_titlebar_bg = '#222222',
}
config.font = wezterm.font('FiraCode Nerd Font')
config.font_size = 16
config.line_height = 1.3

return config
