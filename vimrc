execute pathogen#infect()
filetype plugin indent on
syntax enable
set nocompatible
set modelines=0

"setup tab behavior
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

"ensure undodir exists
if !isdirectory($HOME."/.vimundo")
    call mkdir($HOME."/.vimundo", "p")
endif
set undodir=~/.vimundo//
"ensure backupdir exists
if !isdirectory($HOME."/.vimbackup")
    call mkdir($HOME."/.vimbackup", "p")
endif
set backupdir=~/.vimbackup//
"ensure swapdir exists
if !isdirectory($HOME."/.vimswap")
    call mkdir($HOME."/.vimswap", "p")
endif
set directory=~/.vimswap//


"search tweaks
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <tab> %
vnoremap <tab> %

"setup wordwrap
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

if has('gui_running')
    set background=light
else
    set background=dark
endif
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

"disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"disable F1 key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"map jj to ESC
inoremap jj <ESC>

"remap ; to : in normal mode
nnoremap ; :

"remap leader key
let mapleader = ","
nnoremap <leader><space> :noh<cr>
nnoremap <CAPSLOCK> ,

"remap window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"useful macros
"open a new window
nnoremap <leader>w <C-w>v<C-w>l

"Nerdtree setup
"open nerdtree if no files were given
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

