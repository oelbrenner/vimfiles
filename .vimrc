syntax on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails.git'
Bundle 'Valloric/YouCompleteMe'
Bundle 'airblade/vim-gitgutter'

:so ~/.vim/plugin/surround.vim
filetype off
filetype plugin indent on
colorscheme koehler

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
highlight SignColumn ctermbg=black guibg=black

let mapleader = "\\"
set guioptions=aAce
set go-=T
set nocompatible
set modelines=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
set showcmd
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
set rnu
set lines=66
set columns=205
set spelllang=en
set spell
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack --type=ruby --type=html --type=coffee --type=js
vnoremap <leader>] :TComment <CR>
nnoremap <leader>] :TComment <CR>
autocmd VimEnter * NERDTree
