"===General==="
set nocompatible            " required
filetype off                " required
set encoding=UTF-8

"===Vundle==="
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
    "===Plugins==="
    " Let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'preservim/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plugin 'scrooloose/nerdtree-project-plugin' " save/restore state of NERDTree between sessions
    Plugin 'PhilRunninger/nerdtree-buffer-ops' " Highlight open files, close buffers directly from NERDTree
    Plugin 'PhilRunninger/nerdtree-visual-selection' " Enable NERDTree to open, delete, move, or copy multiple visually selected files at once
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'dense-analysis/ale'
    Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plugin 'ryanoasis/vim-devicons' " manual says always keep as last
" All of your Plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required

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
" In order to toggle smartcase
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
" Backspace behaviors
set backspace=indent,eol,start
" Map leader to comma
let mapleader = ","
" Show commands
set showcmd

"===Mappings==="
" Alt + j/k to move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
    "===NERDTree==="
    nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n> :NERDTree<CR>
    nnoremap <C-t> :NERDTreeToggle<CR>
    nnoremap <C-f> :NERDTreeFind<CR>

"===AutoCmds==="
    "===NERDTree==="
    " Show hidden files by default
    let NERDTreeShowHidden=1
    " Start NERDTree and put the cursor back in the other window
    autocmd VimEnter * NERDTree | wincmd p
    " Exit Vim if NERDTree is the only window left
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
    "===Airline==="
    let g:airline_theme='google_dark'
    "===LanguageClient==="
    let g:LanguageClient_servercommans = {
        \ 'python': ['/home/willgo/.local/bin/pyls'],
        \}
