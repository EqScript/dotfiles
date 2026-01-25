-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
local shell = "bash"

-- Decorations
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true

-- For example, changing the initial geometry for new windows:
-- config.initial_cols = 120
-- config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 15
config.font = wezterm.font_with_fallback {
    'BlexMono Nerd Font Mono', 
    'BlexMono Nerd Font',
    'Hack Nerd Font Mono',
    'Lilex Nerd Font Mono',
}
config.color_scheme = 'Dissonance (Gogh)'

-- Finally, return the configuration to wezterm:
return config
