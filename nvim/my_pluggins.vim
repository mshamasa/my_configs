call plug#begin()

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
" git
Plug 'tpope/vim-fugitive'
" auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
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

call plug#end()
