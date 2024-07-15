source ~/.config/nvim/vim-plug/plugins.vim
" source ~/.config/nvim/lsp/lsp.vim
" source ~/.config/nvim/nvim-tree/tree.vim
source ~/.config/nvim/cmp/cmp.vim

lua << EOF
require('telescope').load_extension('media_files')
require'telescope'.setup {
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      -- filetypes = {"png", "webp", "jpg", "jpeg"},
      -- find command (defaults to `fd`)
      find_cmd = "find"
    }
  },
}
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    }
}
-- require("bufferline").setup{}
require("toggleterm").setup()
require("better-comment").Setup()
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
require'lspconfig'.glsl_analyzer.setup{
    on_attach = function()
        print("attached")
    end
}
EOF

syntax on

set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4

set number relativenumber
set termguicolors
set nohlsearch
set nowrap
set mouse=a
set scrolloff=5

set guifont:Cascadia\ Mono:h12

"colorscheme monokai_pro
colorscheme sonokai

"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
"let g:airline_powerline_fonts = 1

highlight GitGutterAdd    guifg=#adda78 ctermfg=2
highlight GitGutterChange guifg=#f9cc6c ctermfg=3
highlight GitGutterDelete guifg=#df6883 ctermfg=1

let g:transparent_enabled = v:true

let g:neovide_transparency=0.7

" autocmd BufRead,BufNewFile *.vert set filetype=glsl
" autocmd BufRead,BufNewFile *.geom set filetype=glsl
" autocmd BufRead,BufNewFile *.frag set filetype=glsl
" autocmd BufRead,BufNewFile *.comp set filetype=glsl
autocmd BufRead,BufNewFile *.typ set filetype=typst
autocmd BufRead,BufNewFile *.agda set filetype=agda

autocmd FileType cpp setlocal commentstring=//\ %s

let mapleader=" "

" Using Lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <C-p>      <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" split shortcuts
tnoremap <Esc> <C-\><C-n>

tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap <silent> gh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gf <cmd>lua vim.lsp.buf.format()<CR>
nnoremap <silent> <C-space> <cmd>lua vim.lsp.buf.completion()<CR>
nnoremap <silent> <F2> <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <Esc> hllh
nnoremap die ggVGd
nnoremap cie ggVGc
noremap <C-/> :Commentary<CR>
" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><C-j> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><C-j> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><C-j> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

