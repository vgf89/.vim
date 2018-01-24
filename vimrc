" Enable Vi incompatible features
set nocompatible

" Enable mouse
" Allows clicking to highlight and dragging pane borders
set mouse=a

" Global X selection buffer (yank and paste across instances)
set clipboard=unnamed

" Enable global syntax highlighting
filetype on
syntax on

" Color Scheme
set t_Co=256
set t_ut=
colorscheme codedark

" Font
set guifont=Hack\ Regular:h18

" Open split panes to right and bottom
set splitbelow
set splitright

" Line numbering
set number

" Column warning
set colorcolumn=100

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
"Highlight matching parens
set showmatch

" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
call plug#end()

" Note: fugitive provides git-blame as :Gblame

" Start NERDTree hidden
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1

" Enable Lightline
set laststatus=2
set noshowmode


"~~~~~~~~~~~~~KEYMAP~~~~~~~~~~~~~"
" Leader key
let mapleader=" "

" Reload .vimrc with <leader>s without restarting vim
map <leader>s :source ~/.vimrc<CR>

" Map NERDTree
map <Leader>n :NERDTreeToggle<CR>

" Locate focused file
nmap <Leader>l :NERDTreeFind<CR>

" Map hightlight toggle to <Leader>h
nnoremap <Leader>h :set invhlsearch<CR>

" Re-Open previous file, switch between current and last file
nnoremap <Leader><Leader> :e#<CR>

" Map split navigation to Ctrl-[hjkl]
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Resizing splits help:
"  Max height: <C-W>_
"  Max width:  <C-W>|
"  Normalize:  <C-W>=
"Other split manipulations
"  Swap top/bottom or left/right:                       <C-W>r
"  Break out of current window into new tabview:        <C-W>t
"  Close every window in current tab view except one:   <C-W>o
"Help    :help splits


" Map [number]<Enter> to jumping to line number
nnoremap <CR> G

" Map keypad enter to normal enter
nmap <kEnter> <Enter>
