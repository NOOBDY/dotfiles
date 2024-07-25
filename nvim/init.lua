require("config.lazy")

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "gleam",
--   callback = function ()
    require("lspconfig").gleam.setup({})
  -- end
-- })


vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  command = "setlocal commentstring=//\\ %s"
})

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  command = "startinsert"
})

vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.scrolloff = 3

vim.keymap.set("t", "<Esc>", "<nop>", {})
vim.keymap.set("t", "<A-h>", "<C-\\><C-N><C-w>h", {})
vim.keymap.set("t", "<A-j>", "<C-\\><C-N><C-w>j", {})
vim.keymap.set("t", "<A-k>", "<C-\\><C-N><C-w>k", {})
vim.keymap.set("t", "<A-l>", "<C-\\><C-N><C-w>l", {})
vim.keymap.set("i", "<A-h>", "<C-\\><C-N><C-w>h", {})
vim.keymap.set("i", "<A-j>", "<C-\\><C-N><C-w>j", {})
vim.keymap.set("i", "<A-k>", "<C-\\><C-N><C-w>k", {})
vim.keymap.set("i", "<A-l>", "<C-\\><C-N><C-w>l", {})
vim.keymap.set("n", "<A-h>", "<C-w>h", {})
vim.keymap.set("n", "<A-j>", "<C-w>j", {})
vim.keymap.set("n", "<A-k>", "<C-w>k", {})
vim.keymap.set("n", "<A-l>", "<C-w>l", {})

vim.keymap.set("n", "<Esc>", "hllh", {});
vim.keymap.set("n", "die", "ggVGd", {});
vim.keymap.set("n", "cie", "ggVGc", {});
vim.keymap.set("n", "vie", "ggVG", {});
vim.keymap.set("", "<C-/>", ":Commentary<CR>", {});

vim.o.guifont = "Cascadia Mono:h12"
