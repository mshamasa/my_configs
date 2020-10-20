source $HOME/.config/nvim/my_pluggins.vim
source $HOME/.config/nvim/common_init.vim
source $HOME/.config/nvim/alec.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/lsp.vim

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePre *.js execute ':Prettier'

