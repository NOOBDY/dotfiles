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

colorscheme monokai_pro

"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
"let g:airline_powerline_fonts = 1

let g:semshi#simplify_markup = v:false

let g:transparent_enabled = v:true

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

"---
"powerline
"let g:powerline_pycmd="py"
"set rtp+="$HOME/.local/lib/python3.9/site-packages/powerline/bindings/vim"
"set laststatus=2
