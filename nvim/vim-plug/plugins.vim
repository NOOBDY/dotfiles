call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'akinsho/bufferline.nvim'
Plug 'airblade/vim-gitgutter'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'nvim-lua/plenary.nvim' " required by haskell-tools.nvim

Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'on': [] }
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'evanleck/vim-svelte'
Plug 'ap/vim-css-color'
Plug 'JosefLitos/vim-i3config'
Plug 'mrcjkb/haskell-tools.nvim'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'crusoexia/vim-monokai'
Plug 'fratajczak/one-monokai-vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai'

Plug 'xiyaowong/nvim-transparent'
call plug#end()
