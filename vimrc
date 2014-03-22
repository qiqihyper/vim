set autoread
let mapleader = ','
set nocompatible
set mouse=a
set novb t_vb=
set nobackup
set writebackup
set cursorcolumn
set cursorline
set foldmethod=indent
set t_ti= t_te=
set t_Co=256
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
imap <F3> <ESC><F3>
noremap <F3> :w<cr>
noremap <Up> <c-w>k
noremap <Down> <c-w>j
noremap <Right> <c-w>l
noremap <Left> <c-w>h
cmap w!! w !sudo tee >/dev/null %

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc() 
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
imap <silent> <F2> <ESC><F2>
noremap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q |end
let NERDTreeWinSize=26
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeDirArrows=0

Bundle 'majutsushi/tagbar'
imap <silent> <F9> <ESC><F9>
noremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_width=26
let g:tagbar_iconchars = ['+', '-']

Bundle 'Lokaltog/vim-powerline'
set laststatus=2

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

Bundle 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'
"imap <F10> <ESC><F10>
map <F10> :call IndentLineToggle()<cr>
func! IndentLineToggle()
	let g:indentLine_enabled = 0
	source ~/.vimrc
endfunc

Bundle 'Raimondi/delimitMate'

Bundle 'scrooloose/syntastic'
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_enable_highlighting = 1

"Bundle 'hdima/python-syntax'

"Bundle 'SirVer/ultisnips'
"let g:UltiSnipsExpandTrigger = "<F2>"
"let g:UltiSnipsJumpForwardTrigger = "<F2>"
"let g:UltiSnipsSnippetDirectories=["snippets", "bundle/UltiSnips/UltiSnips"]

"Bundle 'Valloric/YouCompleteMe'
"set completeopt-=preview
"let g:ycm_min_num_of_chars_for_completion = 1

Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'docunext/closetag.vim'

Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

Bundle 'scrooloose/nerdcommenter'

filetype on
filetype plugin on
filetype plugin indent on

colorscheme molokai

if has("gui_running")
	set guifont=XHei\ Mono\ 14
	set guioptions-=T
	set guioptions-=r
	set guioptions-=L
	autocmd BufEnter * cd %:p:h
	"cd /home/qiqi/coding
endif
