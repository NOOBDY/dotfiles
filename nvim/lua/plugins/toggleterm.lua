return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      open_mapping = [[<C-j>]]
    }
    local Terminal = require('toggleterm.terminal').Terminal
    -- local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
    local lazygit  = Terminal:new({
      cmd = "lazygit",
      -- dir = "git_dir",
      direction = "float",
      float_opts = {
        border = "curved",
      },
      -- function to run on opening the terminal
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
      -- function to run on closing the terminal
      on_close = function(term)
        vim.cmd("startinsert!")
      end,
    })

    function LazygitToggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua LazygitToggle()<CR>", { noremap = true, silent = true })
  end
}

