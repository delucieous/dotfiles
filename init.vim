" Plugins
call plug#begin()

Plug 'google/vim-searchindex'
Plug 'vim-scripts/a.vim'
Plug 'itchyny/lightline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Basic QoL Settings
let mapleader=","
syntax on

set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

set showmode
set showcmd

set incsearch
set hlsearch

set splitbelow
set splitright

set cursorline
set wrapscan
set report=0

set list
set number
set relativenumber
nnoremap <Leader>r :setlocal relativenumber!<CR>
nnoremap <Leader>z :StripWhitespace<CR>

map ; :
imap jj <Esc>

" Split navigation
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

nmap <C-p> :GFiles<CR>
nmap <C-f> :Files<CR>

" Appearance
set termguicolors
colorscheme nord
set colorcolumn=80

" CHADTree
map <Leader>n <cmd>CHADopen<CR>

" Lightline settings
let g:lightline = {
    \ 'colorscheme': 'nord'
\ }

" CoC stuff
nmap <leader>rn <Plug>(coc-refactor)
nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
