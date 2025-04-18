require("config.lazy")
require("config.telescope")

-- Lua config in `init.lua`
vim.o.termguicolors = true
vim.cmd [[
  highlight Comment cterm=italic gui=italic
]]
