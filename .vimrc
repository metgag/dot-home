" Use system clipboard by default
set clipboard=unnamedplus

" Enable line numbers
set number
set relativenumber           " Relative line numbers (nice for motions like 5j, etc.)

" Highlight current line
" set cursorline

" Enable syntax highlighting
syntax on

" Enable file type detection and indentation
filetype plugin indent on

" Enable smart indentation
set smartindent
set autoindent
set tabstop=2       " A tab equals 4 spaces
set shiftwidth=2    " Indent/outdent by 4 spaces
set expandtab       " Use spaces instead of tabs

" Highlight search results
" set hlsearch
set incsearch       " Show matches as you type

" Case-insensitive search unless uppercase letters are used
set ignorecase
set smartcase

" Show matching parentheses
set showmatch

" Set color scheme (change to your favorite)
colorscheme default

" Set a nice status line
set laststatus=2
set ruler

" Better command-line completion
set wildmenu
set wildmode=list:longest

" Faster redrawing
set lazyredraw

" Reduce update time (e.g., for CursorHold events)
set updatetime=300

" Netrw settings
let g:netrw_banner = 0       " Hide banner at the top
let g:netrw_liststyle = 3    " Tree view style
let g:netrw_browse_split = 4 " Open file in previous window
" let g:netrw_altv = 1         " Open splits to the right
let g:netrw_winsize = 24     " Width of netrw window

" Automatically open netrw when starting Vim with a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv(0)) | exe 'Vexplore' | wincmd h | endif

" Open netrw manually
nnoremap <C-n> :Vex<CR>

" Easier window navigation (like in tmux)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let mapleader = " "
" Comment selected lines with leader + c
vnoremap <leader>c :s/^/# /<CR>:nohlsearch<CR>

" Uncomment selected lines with leader + u
vnoremap <leader>u :s/^#\s\?//<CR>:nohlsearch<CR>
