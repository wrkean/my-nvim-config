-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set "jk" as Escape and save when exiting insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>:write<CR>', { noremap = true, silent = true })

-- Set "jj" as Ctrl-S to save file, preferably to be used only when resetting LSPs
vim.api.nvim_set_keymap('i', 'jj', '<C-s>', { noremap = false, silent = true })
