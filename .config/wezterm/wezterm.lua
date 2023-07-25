-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Batman'

config.enable_scroll_bar = true
config.min_scroll_bar_height = '2cell'

config.native_macos_fullscreen_mode = true

config.font = wezterm.font 'JetBrains Mono'

-- image can be found here: https://github.com/EndeavourOS-Community-Editions/Community-wallpapers/blob/main/eos_wallpapers_community/LAUNCH-SUNSET.png
config.window_background_image = '/Users/curtisault/.config/wezterm/wallpapers/LAUNCH-SUNSET.png'

-- config.window_background_gradient = {
--   -- Can be "Vertical" or "Horizontal".  Specifies the direction
--   -- in which the color gradient varies.  The default is "Horizontal",
--   -- with the gradient going from left-to-right.
--   -- Linear and Radial gradients are also supported; see the other
--   -- examples below
--   orientation = { Linear = { angle = 45.0 } },

--   -- Specifies the set of colors that are interpolated in the gradient.
--   -- Accepts CSS style color specs, from named colors, through rgb
--   -- strings and more
--   colors = { '#A5FFA1', '#A1F9FF' },

--   -- Instead of specifying `colors`, you can use one of a number of
--   -- predefined, preset gradients.
--   -- A list of presets is shown in a section below.
--   -- preset = "Cool",

--   -- Specifies the interpolation style to be used.
--   -- "Linear", "Basis" and "CatmullRom" as supported.
--   -- The default is "Linear".
--   interpolation = 'Linear',

--   -- How the colors are blended in the gradient.
--   -- "Rgb", "LinearRgb", "Hsv" and "Oklab" are supported.
--   -- The default is "Rgb".
--   blend = 'Rgb',

--   -- To avoid vertical color banding for horizontal gradients, the
--   -- gradient position is randomly shifted by up to the `noise` value
--   -- for each pixel.
--   -- Smaller values, or 0, will make bands more prominent.
--   -- The default value is 64 which gives decent looking results
--   -- on a retina macbook pro display.
--   noise = 64,

--   -- By default, the gradient smoothly transitions between the colors.
--   -- You can adjust the sharpness by specifying the segment_size and
--   -- segment_smoothness parameters.
--   -- segment_size configures how many segments are present.
--   -- segment_smoothness is how hard the edge is; 0.0 is a hard edge,
--   -- 1.0 is a soft edge.

--   -- segment_size = 11,
--   -- segment_smoothness = 0.0,
-- }


-- and finally, return the configuration to wezterm
return config

