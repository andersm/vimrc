set nocompatible              " be iMproved, required

packadd minpac
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('Valloric/YouCompleteMe')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('Raimondi/delimitMate')
call minpac#add('tpope/vim-fugitive')
call minpac#add('jreybert/vimagit')
call minpac#add('embear/vim-localvimrc')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('qpkorr/vim-bufkill')
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('jpalardy/vim-slime', {'type': 'opt'})
call minpac#add('vivien/vim-linux-coding-style', {'type': 'opt'})
call minpac#add('kergoth/vim-bitbake', {'type': 'opt'})
call minpac#add('ARM9/arm-syntax-vim', {'type': 'opt'})

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

filetype plugin indent on

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
        set guifont=Inconsolata\ for\ Powerline:h13
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

