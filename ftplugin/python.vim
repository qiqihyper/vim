set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

imap <silent> <F5> <ESC><F5>
noremap <silent> <F5> :call RunPython()<CR>
func! RunPython()
	exec "w"
	exec "!python %"
	echo "\n"
endfunc
