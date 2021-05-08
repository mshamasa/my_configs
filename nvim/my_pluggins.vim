call plug#begin()

Plug 'preservim/nerdtree'
" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
" black to format python code
Plug 'psf/black', { 'branch': 'stable' }
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" Themes
Plug 'joshdick/onedark.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" status bar theme
Plug 'itchyny/lightline.vim'
" syntax highlights for js, ts, tsx 
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()
