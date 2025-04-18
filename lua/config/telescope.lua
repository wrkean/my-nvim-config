require('telescope').setup({
  defaults = {
    file_ignore_patterns = { ".git/" }, -- Ignore .git but keep other hidden files
    find_command = { "rg", "--files", "--hidden", "--no-ignore" },
  },
  pickers = {
    find_files = {
      hidden = true,  -- Include hidden files by default
      follow = true   -- Follow symlinks
    }
  }
})
