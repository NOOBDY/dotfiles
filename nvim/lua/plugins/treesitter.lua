return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-context"
  },
  build = ":TSUpdate",
  priority = 1000,
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "agda",
        "bash",
        "c",
        "cpp",
        "diff",
        "gleam",
        "go",
        "haskell",
        "html",
        "javascript",
        "latex",
        "lua",
        "markdown",
        "markdown_inline",
        "nix",
        "python",
        "rust",
        "svelte",
        "sql",
        "templ",
        "tsx",
        "typescript",
        "typst",
        "vim",
        "zig"
      },
      auto_install = true,
      sync_install = false,
      ignore_install = {},
      highlight = {
        enable = true,
      }
    }
  end
}
