"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"               . ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""       

" disable compatibility with vi which can cause unexpected issues.
set nocompatible

" enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" enable plugins and load plugin for the detected file type.
filetype plugin on

" load an indent file for the detected file type.
filetype indent on

syntax on
set relativenumber
set cursorline
set shiftwidth=2
set tabstop=2

set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
nnoremap <leader>h :noh<CR>
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

call plug#begin('~/.vim/plugged') 

  Plug 'dense-analysis/ale'

  Plug 'preservim/nerdtree'

  Plug 'sheerun/vim-polyglot'

call plug#end()

inoremap jj <esc>
let mapleader = " "

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

nnoremap <leader>. :NERDTreeToggle<cr>

let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
let NERDTreeShowHidden=1

set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2
