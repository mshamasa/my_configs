source $HOME/.config/nvim/common_init.vim

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

color gruvbox
"color onedark
"color dracula 
set background=dark

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

source $HOME/.config/nvim/alec.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/lsp.vim

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePre *.js execute ':Prettier'

