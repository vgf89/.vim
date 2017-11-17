set nocompatible

" Leader key
let mapleader=" "

" Reload .vimrc with <leader>s without restarting vim
map <leader>s :source ~/.vimrc<CR>

set mouse=a

"
filetype on
syntax on

" Color Scheme
set t_Co=256
set t_ut=
colorscheme codedark

" Font
set guifont=Hack\ Regular:h18


" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
call plug#end()

" Note: fugitive provides git-blame as :Gblame

" Map NERDTree
map <Leader>f :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
" Locate focused file
nmap <Leader>l :NERDTreeFind<CR>

" Enable Lightline
set laststatus=2
set noshowmode

" Column warning
set colorcolumn=100

" Line numbering
set number

" More caching
set hidden
set history=255

" Indentation defaults
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight found words in search
set hlsearch
" Map hightlight toggle to <Leader>h
nnoremap <Leader>h :set invhlsearch<CR>

"Highlight matching parens
set showmatch

" Cancel search with <Esc>
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
"Breaks arrow keys for some reason...?

" Re-Open previous file, switch between current and last file
nnoremap <Leader><Leader> :e#<CR>
