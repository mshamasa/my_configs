" Fix files with prettier, and then ESLint.
let g:ale_linters = { 'javascript': ['xo', 'tsserver'], 'python': ['flake8'] }
let g:ale_fixers = { 'javascript': ['prettier'], 'json': ['prettier'], 
    \ 'python': ['black, isort'] }
let g:ale_sign_column_always = 1
let g:ale_lint_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_completion_enabled=1
