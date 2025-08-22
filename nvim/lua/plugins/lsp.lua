return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "jay-babu/mason-null-ls.nvim",
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "luvit-meta/library", words = { "vim%.uv" } },
        },
      },
    },
    { "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings
    {                                        -- optional completion source for require statements and module annotations
      "hrsh7th/nvim-cmp",
      opts = function(_, opts)
        opts.sources = opts.sources or {}
        table.insert(opts.sources, {
          name = "lazydev",
          group_index = 0, -- set group index to 0 to skip loading LuaLS completions
        })
      end,
    },
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "clangd",
        "cmake",
        "dockerls",
        "emmet_language_server",
        "eslint",
        "glsl_analyzer",
        "gopls",
        "html",
        "lua_ls",
        "nil_ls",
        "pyright",
        "reason_ls",
        "rescriptls",
        "ruff",
        "rust_analyzer",
        "svelte",
        "tailwindcss",
        "templ",
        "tinymist",
        "ts_ls",
        -- "typst-lsp",
        "zls",
      },
      automatic_installation = {
        exclude = { "ts_ls", "ocamllsp" }
      },
      -- The first entry (without a key) will be the default handler
      -- and will be called for each installed server that doesn't have
      -- a dedicated handler.
      handlers = {
        html = function()
          local capabilities = require("cmp_nvim_lsp").default_capabilities()
          require("lspconfig").html.setup {
            capabilities = capabilities,
            filetype = { "html", "templ" }
          }
        end,
        function(server_name) -- default handler (optional)
          local capabilities = require("cmp_nvim_lsp").default_capabilities()
          require("lspconfig")[server_name].setup {
            capabilities = capabilities
          }
        end
      },
      automatic_enable = {
        exclude = {
          "ts_ls"
        }
      }
    })
    local null_ls = require("null-ls")
    require("mason-null-ls").setup({
      ensure_installed = {
        "clang-format",
        "golangci-lint",
        "ocamlformat",
        "prettier",
        "ormolu",
        -- "typstfmt",
      },
      automatic_installation = true,
      handlers = {
        -- prettierd = function(source_name, methods)
        --   null_ls.register(null_ls.builtins.formatting.prettierd)
        -- end,
      },
    })
    require("lspconfig").gleam.setup({})
    require("lspconfig").ocamllsp.setup({})

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "gp", builtin.diagnostics, {})
    vim.keymap.set("n", "gr", builtin.lsp_references, {})
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
