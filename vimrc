autocmd BufWritePost $MYVIMRC source $MYVIMRC

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

set mouse=a
set backspace=indent,eol,start

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
"set cursorcolumn
set cursorline
hi CursorLine   cterm=NONE ctermbg=236
hi CursorColumn cterm=NONE ctermbg=236
set clipboard=unnamed
set nu
imap <F11> <ESC><F11>
noremap <F11> :call NumberToggle()<cr>
func! NumberToggle()
	if(&nu)
		set nonu
	else
		set nu
	endif
endfunc
cmap w!! w !sudo tee >/dev/null %

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc() 
Bundle 'gmarik/vundle'

"Bundle 'Lokaltog/vim-powerline'

Bundle 'scrooloose/nerdtree'
imap <silent> <F2> <ESC><F2>
noremap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q |end
let NERDTreeWinSize=26
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeDirArrows=0
"set laststatus=2

syntax on

Bundle 'kien/rainbow_parentheses.vim'
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

Bundle 'Raimondi/delimitMate'

Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

Bundle 'scrooloose/nerdcommenter'

Bundle 'pangloss/vim-javascript'
let g:javascript_enable_domhtmlcss = 1
let g:javascript_ignore_javaScriptdoc = 1
set foldmethod=manual
Bundle 'mxw/vim-jsx'
let g:jsx_ext_required = 0

filetype on
filetype plugin on
filetype plugin indent on
au BufNewFile,BufRead *.md setf md
