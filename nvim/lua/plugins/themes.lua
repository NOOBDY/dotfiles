return {
  "vim-airline/vim-airline",
  "vim-airline/vim-airline-themes",

  "Djancyp/better-comments.nvim",

  "crusoexia/vim-monokai",
  "fratajczak/one-monokai-vim",
  "phanviet/vim-monokai-pro",
  "morhetz/gruvbox",
  {
    "sainnhe/sonokai",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme sonokai]])
    end,
  },

  "xiyaowong/nvim-transparent"
}
