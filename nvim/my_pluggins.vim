call plug#begin()

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
" git
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
" black to format python code
Plug 'psf/black', { 'branch': 'stable' }
" ale to handle auto complete, linting
Plug 'dense-analysis/ale'
" Javascript
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" Lsp
Plug 'neovim/nvim-lspconfig'
" Themes
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'
Plug 'gruvbox-community/gruvbox'
" status bar theme
Plug 'vim-airline/vim-airline'


call plug#end()
