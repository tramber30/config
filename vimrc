set runtimepath=/home/nbertran/.vim,/usr/share/vim/vim72,$VIMRUNTIME
colorscheme default
" coloration syntaxique
syn on
" remove system beep
set visualbell
" line number
"set number
map <F12> :set number!<CR>
"highlight LineNr term=bold ctermfg=darkgray ctermbg=gray
" highlight current search
set hlsearch
"set incsearch
highlight Search ctermbg=yellow ctermfg=red
" keep auto indentation
set autoindent
" highlight space and Tab
highlight Tab ctermbg=darkgray guibg=darkgray
highlight Space ctermbg=darkblue guibg=darkblue
" set size of indentation
set shiftwidth=8
" replace tab by space
set expandtab
set backspace=indent,eol,start
" nombre d'espace par tab
set tabstop=8
" backspace supprime 4 caractere
set softtabstop=8
set cursorline
"highlight CursorLine ctermbg=lightgray
"paste with no indentation
"set paste
set ignorecase
" set smartcase
" set filetyp plugins
filetype on
if has("autocmd")
	filetype plugin on
endif
filetype plugin indent on 

" Advert about line over 80 charcters
"set textwidth=80
" set columns=80
"highlight OverLength ctermbg=red ctermfg=white
"match OverLength /\%81v.\+/

