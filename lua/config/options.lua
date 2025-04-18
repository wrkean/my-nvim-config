-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Tab options
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Set absolute number when entering insert mode, set to relative when exiting
vim.opt.number = true

-- Wrapping text
vim.opt.wrap = true
vim.opt.linebreak = true

-- Disable snacks animation
vim.g.snacks_animate = false

-- Disable comment italics
vim.cmd([[autocmd VimEnter * hi Comment gui=None]])
