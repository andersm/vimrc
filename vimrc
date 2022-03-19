set nocompatible              " be iMproved, required
filetype off                  " required

source /usr/share/doc/fzf/examples/plugin/fzf.vim

set rtp+='/usr/share/doc/fzf/examples/plugin/fzf.vim'

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
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-fugitive'
Plugin 'jreybert/vimagit'
Plugin 'embear/vim-localvimrc'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jpalardy/vim-slime'
Plugin 'vivien/vim-linux-coding-style'
Plugin 'kergoth/vim-bitbake'
Plugin 'qpkorr/vim-bufkill'
Plugin 'ARM9/arm-syntax-vim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'RRethy/vim-illuminate'
Plugin 'junegunn/fzf.vim'

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

"" Filename tab completion
set wildmode=longest,list,full
set wildmenu

"" no beeps!
set visualbell
set t_vb=

"" split navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"" Cosmetics
set background=dark
colorscheme solarized8

set cursorline                      " highlight current line
set guicursor+=i:block-Cursor
set guicursor+=a:blinkon0           " disable cursor blink
set guicursor+=i:blinkon0

set scrolloff=1
set sidescrolloff=5

set mouse=a

let g:airline_powerline_fonts=1
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
if has('gui_running')
    if (has('gui_mac') || has('gui_macvim'))
        set guifont=Inconsolata\ Nerd\ Font\ Mono:h13
    else
        set guifont=Inconsolata-dz\ for\ Powerline\ 11
    endif
endif

if has('gui_running')
    set lines=50 columns=100
endif

"" autocompletion
set completeopt=longest,menuone

"" vim-slime
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

"" delimitMate
au FileType lisp let b:delimitMate_quotes = "\" `"

"" vim-linux-coding-style
let g:linuxsty_patterns = [ "linux-socfpga" ]

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"" Vimagit
command! Hmagit call magit#show_magit('h')

"" FZF
command! Fzf call fzf#run({'source': 'rg --files', 'sink': 'e', 'down': '40%'})
nnoremap <c-p> :Fzf<cr>
