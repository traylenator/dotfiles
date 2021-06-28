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

set spelllang=en_gb

autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell
autocmd FileType markdown setlocal complete+=kspell
autocmd FileType gitcommit setlocal complete+=kspell

call plug#begin('~/.vim/plugged')
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'nfnty/vim-nftables'
Plug 'editorconfig/editorconfig-vim' " 
Plug 'elzr/vim-json' "
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim' " 
Plug 'mrk21/yaml-vim' " 
" Needs vim 8.1  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}} " Language Server support
Plug 'rodjek/vim-puppet' " For Puppet syntax highlighting
Plug 'vim-ruby/vim-ruby' " For Facts, Ruby functions, and custom providers
" match % it end type things
runtime macros/matchit.vim


call plug#end()

let g:vim_markdown_folding_disabled = 1

command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0) " FZF settings
noremap <Leader>/ :FZF<CR> " Set FZF to <LEADER>/, which for me is `,/`


