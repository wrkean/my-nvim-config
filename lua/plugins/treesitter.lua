return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
        "cpp", "c",
        "rust", "python",
        "lua", "json",
        "bash", "markdown",
        "zig"
    },
    highlight = { enable = true },
    indent = { enable = true }
  }
}
