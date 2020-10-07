syntax on

set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
" git
Plug 'tpope/vim-fugitive'
" Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'dense-analysis/ale'
" Javascript
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" Lsp
Plug 'neovim/nvim-lspconfig'

call plug#end()

" Fix files with prettier, and then ESLint.
let g:ale_linters = { 'javascript': ['eslint', 'tsserver'], 'python': ['flake8'] }
let g:ale_fixers = { 'javascript': ['prettier'], 'json': ['prettier'], 
    \ 'python': ['black, isort'] }
let g:neoformat_enabled_python = ['black']
let g:ale_sign_column_always = 1
let g:ale_lint_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_completion_enabled=1
let g:rainbow_active = 1

autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePre *.js execute ':Prettier'

let mapleader = " "
" let g:airline_theme='deus'
nor <leader>nt :NERDTree<CR>
nor <leader>f :FZF<CR>
nor <leader>h :wincmd h<CR>
nor <leader>j :wincmd j<CR>
nor <leader>k :wincmd k<CR>
nor <leader>l :wincmd l<CR>

colorscheme gruvbox
set background=dark

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

"LSP configs
:lua << END
  require'nvim_lsp'.tsserver.setup{}
END

