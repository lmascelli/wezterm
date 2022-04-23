local wezterm = require 'wezterm'

powershell = "pwsh"
log = io.output('D:/wez.log')
io.write(string.sub(wezterm.home_dir, 2, 3))
if string.sub(wezterm.home_dir, 2, 3) == ':\\' then
  powershell = "powershell"
end

return {
  window_decorations = 'RESIZE',
  initial_cols = 90,
  initial_rows = 40,
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
  },
}

