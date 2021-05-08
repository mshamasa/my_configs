source $HOME/.config/nvim/my_pluggins.vim
source $HOME/.config/nvim/common_init.vim
source $HOME/.config/nvim/mappings.vim

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'absolutepath', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'filetype' ] ]
      \ },
      \ }

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['^node_modules$']

lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

lua << EOF
  require('telescope').setup {
    defaults = {
      layout_strategy = "vertical",
    }
  }
EOF

"autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePre *.{js,ts,tsx,json,css,scss} execute ':Prettier'
