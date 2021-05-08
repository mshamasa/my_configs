let mapleader = " "
nor <silent><leader>nt :NERDTree<CR>
nor <silent><leader>nf :NERDTreeFind<CR>
nor <silent><leader>ps :Ag<CR>
nor <silent><leader>h :wincmd h<CR>
nor <silent><leader>j :wincmd j<CR>
nor <silent><leader>k :wincmd k<CR>
nor <silent><leader>l :wincmd l<CR>
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Open in new tab
nor <silent>gf <C-W>gf

nor <S-Left> :tabprevious<CR>
nor <S-Right> :tabnext<CR>

" auto trigger using tab
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
