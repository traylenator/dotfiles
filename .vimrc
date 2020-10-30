set number
set expandtab
set shiftwidth=2
set cursorline
set autoindent
set softtabstop=2
set ts=2
set showmatch
let python_highlight_all = 1

"Markdown .md is not Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'puppet','ruby', 'bash=sh']

