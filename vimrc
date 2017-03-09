autocmd BufWritePost $MYVIMRC source $MYVIMRC

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

"set nu
syntax on

set mouse=a
set backspace=indent,eol,start
set foldmethod=manual

set autoread
let mapleader = ';'
set nocompatible
set novb t_vb=
set nobackup
set ttimeoutlen=100
set writebackup
set t_ti= t_te=
set t_Co=256
set hlsearch
set cursorline
hi CursorLine   cterm=NONE ctermbg=236
hi CursorColumn cterm=NONE ctermbg=236
vmap <C-c> "+y
cmap w!! w !sudo tee >/dev/null %

filetype on
filetype plugin on
filetype plugin indent on
au BufNewFile,BufRead,BufReadPost *.md setf markdown

call plug#begin('~/.vim/bundle')

Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
imap <silent> <F2> <ESC><F2>
noremap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q |end
let NERDTreeWinSize=26
let NERDTreeIgnore = ['\.pyc$', '\.class$']
let NERDTreeDirArrows=0

Plug 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 40
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

Plug 'Raimondi/delimitMate'

Plug 'scrooloose/nerdcommenter'

call plug#end()
