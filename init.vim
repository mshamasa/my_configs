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

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
" Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'

call plug#end()

let mapleader = " "
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

