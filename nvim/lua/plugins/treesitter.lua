return {
  "nvim-treesitter/nvim-treesitter",
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
        "lua",
        "nix",
        "python",
        "rust",
        "svelte",
        "sql",
        "tsx",
        "typescript",
        "typst",
        "vim",
        "zig"
      },
      auto_install = true,
      highlight = {
        enable = true,
      }
    }
  end
}
