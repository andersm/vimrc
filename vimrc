set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
set encoding=utf-8
set showcmd                         " display incomplete commands
set ruler                           " show the cursor position all the time
set laststatus=2                    " always display the status line

set number                          " show line numbers

"" Whitespace
set tabstop=4 shiftwidth=4          " tabs are 4 spaces
set expandtab                       " use spaces, not tabs
set backspace=indent,eol,start      " backspace through everything in insert mode

"" Searching
set hlsearch                        " highlight matches
set incsearch                       " incremental search
set ignorecase                      " searches are case insensitive...
set smartcase                       " ...unless they contain at least one capital letter

let mapleader=","

" no beeps!
set visualbell
set t_vb=

"" Cosmetics
colorscheme darkblue

set cursorline                      " highlight current line
set guicursor+=i:block-Cursor
set guicursor+=a:blinkon0           " disable cursor blink
set guicursor+=i:blinkon0

set scrolloff=1
set sidescrolloff=5

if has('gui_running')
    let g:airline_powerline_fonts=1
    if has('gui_mac')
        set guifont=Inconsolata\ for\ Powerline:h13
    else
        set guifont=Inconsolata\ for\ Powerline\ 13
    endif
endif

if has('gui_running')
    set lines=50 columns=100
endif

