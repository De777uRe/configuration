"===Numbering==="
" Toggle relative number lines
set relativenumber
" Toggle current line number as well
set number

"===Syntax==="
" Turn on syntax highlightig
syntax on

"===Indentation==="
" Copy indent from the current line when starting new line
set autoindent
" Replace tabs with whitespace characters
set expandtab
" Set tab size
set shiftwidth=4
" A tab character indents to the 4nd column
set tabstop=4

"===Searching==="
" Search highlighting
set hlsearch
" Incremental search
set incsearch
" In order to turn toggle smartcase
set ignorecase
" If search contains capital letter, case-sensitive search
" If not, case-insensitive search
set smartcase

"===Cursor==="
" Always show cursor position
set ruler

"===Buffers==="
" Allows faster navigation between buffers
" (Doesn't require save or force quit to switch)
set hidden

"===Navigation==="
" Number of lines to keep on screen when scrolling
set scrolloff=10

"===Misc==="
" Highlight column 80
set colorcolumn=80

"===Mappings==="
" Alt + j/k to move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv