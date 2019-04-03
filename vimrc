set nocompatible
set backspace=indent,eol,start
set showmode

set scrolloff=3     " Number of lines to keep above and below cursor
set showmatch       " Show matching brackets/paranthesis

set wildmenu
set wildmode=list:longest,full

" FORMATTING
"set textwidth=79
set nowrap          " Don't wrap long lines

" SEARCHING
set incsearch       " Search as you type
set ignorecase
set smartcase
set hlsearch        " Hilight search terms

" TABS
set tabstop=8
set shiftwidth=8
set softtabstop=8
set expandtab

set visualbell
" line number
map <F12> :set number!<CR>

" store swap files in this folder
set directory=~/.vim/swapfiles//

" AUTOCOMPLETION
setlocal omnifunc=syntaxcomplete#Complete   " Autocompletion, engage!
set cot+=menuone    " Show preview of function prototype

" INDENTATION
set autoindent      " Indent same level as the previous line
set smartindent
filetype plugin indent on
autocmd Filetype c,cpp,java,php set cindent
autocmd Filetype html setlocal shiftwidth=2 tabstop=2 softtabstop=2
" INTERFACE
set nocp            " No compatible mode

" Solarized options
let g:solarized_termcolors=256
" let g:solarized_bold=0
let g:solarized_termtrans=1

syntax enable
set background=light
colorscheme solarized


"set cursorline      " Highlight current line
                    " Disable underline
hi CursorLine term=none cterm=none

if has('cmdline_info')
    set ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
    set showcmd     " Show partial command in status line
endif

if has('statusline')
    set laststatus=1
    set statusline=%<%f\ %=\:\b%n%y%m%r%w\ %l,%c%V\ %P
    "set statusline=[%n]\ %<%f\ %((%1*%M%*%R%Y)%)\ %=%-19(\LINE\ [%3l/%3L]\ COL\ [%02c%03V]%)\ %P
endif


