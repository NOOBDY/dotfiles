return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    { 'folke/neodev.nvim', opts = {} },
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    require("mason-lspconfig").setup_handlers {
      -- The first entry (without a key) will be the default handler
      -- and will be called for each installed server that doesn't have
      -- a dedicated handler.
      function (server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup {}
      end,
    }

    require("mason-tool-installer").setup {
      ensure_installed = {
        "autopep8",
        "black",
        "clang-format",
        "clangd",
        "cmake-language-server",
        "elm-language-server",
        "emmet-language-server",
        "eslint-lsp",
        "glsl_analyzer",
        "gopls",
        "html-lsp",
        "lua-language-server",
        "nil",
        "ocaml-lsp",
        "ocamlformat",
        "prettier",
        "pylint",
        "pyright",
        "rust-analyzer",
        "svelte-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
        "typst-lsp",
        "typstfmt",
        "zls",
      }
    }

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
    vim.keymap.set("n", "gi", builtin.lsp_implementations, {})
    vim.keymap.set("n", "g?", vim.diagnostic.open_float, {})
    vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
    vim.keymap.set("n", "gf", vim.lsp.buf.format, {})
    -- vim.keymap.set("n", "<C-space>", vim.lsp.buf.completion, {})
    vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.code_action, {})
  end
}
