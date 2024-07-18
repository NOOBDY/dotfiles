return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup {
      source = {
        null_ls.builtins.completion.spell
      }
    }
  end
}
