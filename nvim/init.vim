source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/lsp/lsp.vim
source ~/.config/nvim/nvim-tree/tree.vim
source ~/.config/nvim/cmp/cmp.vim

syntax on

set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4

set number relativenumber
set termguicolors
set nohlsearch
set nowrap

set guifont:Cascadia\ Mono:h12

colorscheme monokai_pro

"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
"let g:airline_powerline_fonts = 1

let g:semshi#simplify_markup = v:false

highlight GitGutterAdd    guifg=#adda78 ctermfg=2
highlight GitGutterChange guifg=#f9cc6c ctermfg=3
highlight GitGutterDelete guifg=#df6883 ctermfg=1

let g:transparent_enabled = v:true
let g:tigirs#enabled = 1

let g:neovide_transparency=0.7

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

nnoremap <silent> g? <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent> gh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-space> <cmd>lua vim.lsp.buf.completion()<CR>
nnoremap <silent> <F2> <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <Esc> hllh

"---
"powerline
"let g:powerline_pycmd="py"
"set rtp+="$HOME/.local/lib/python3.9/site-packages/powerline/bindings/vim"
"set laststatus=2
