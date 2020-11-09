syntax on
filetype plugin indent on

set number
set expandtab
set shiftwidth=2
set cursorline
set autoindent
set softtabstop=2
set ts=2
set showmatch
let python_highlight_all = 1




set spell spelllang=en_gb

autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell
autocmd FileType markdown setlocal complete+=kspell
autocmd FileType gitcommit setlocal complete+=kspell

