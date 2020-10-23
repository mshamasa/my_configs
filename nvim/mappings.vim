let mapleader = " "
nor <silent><leader>nt :NERDTree<CR>
nor <silent><leader>f :FZF<CR>
nor <silent><leader>h :wincmd h<CR>
nor <silent><leader>j :wincmd j<CR>
nor <silent><leader>k :wincmd k<CR>
nor <silent><leader>l :wincmd l<CR>
" Use tab to select from popup window 
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

" Open in new tab
nor <silent>gf <C-W>gf


