require("config.lazy")

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
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.scrolloff = 3
vim.opt.wrap = false

-- vim.keymap.set("t", "<Esc>", "<nop>", {})
vim.keymap.set("t", "<C-j>", "<C-\\><C-N>:ToggleTerm<CR>", {})
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

if vim.g.neovide then
  vim.o.guifont = "Cascadia Mono,CaskaydiaCove Nerd Font:h14"
  vim.g.neovide_scale_factor = 0.8
  vim.g.neovide_transparency = 1.0
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_cursor_trail_size = 0.2
  vim.g.neovide_cursor_animation_length = 0.03
  vim.g.neovide_scroll_animation_length = 0.1
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.transparent_enabled = false
  vim.keymap.set("n", "<C-c>", '"+y', {})
  vim.keymap.set("i", "<C-v>", '<ESC>l"+Pli', {})
else
  vim.g.transparent_enabled = true
end
