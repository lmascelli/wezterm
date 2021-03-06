local wezterm = require 'wezterm'

powershell = "pwsh"
if string.sub(wezterm.home_dir, 2, 3) == ':\\' then
  powershell = "pwsh"
end

return {
  window_decorations = 'TITLE|RESIZE',
  initial_cols = 90,
  initial_rows = 40,
  font_dirs = { wezterm.executable_dir .. "/fonts" },
  font = wezterm.font('Cascadia Code'),
  font_size = 10,
  color_scheme = 'Gruvbox Dark',
  default_prog = { powershell },
  warn_about_missing_glyphs = false,
  --  window_background_opacity = 0.95,
  window_close_confirmation = "NeverPrompt",
  exit_behavior = "Close",
  keys = {
    { key = "Space", mods = "CTRL", action = {
      Multiple = {
        { SendKey = { key = "x", mods = "CTRL" } },
        { SendKey = { key = "o", mods = "CTRL" } },
      } } },
    { key = "ì", mods = "CTRL", action = wezterm.action { SendString = "~" } },
    { key = "'", mods = "CTRL", action = wezterm.action { SendString = "`" } }
  },
}
