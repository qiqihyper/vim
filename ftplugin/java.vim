set tabstop=8
set sw=8

imap <silent> <F4> <ESC><F4>
noremap <silent> <F4> :call Compile() <CR>
func! Compile()
	exec "w"
	exec "!javac %"
	echo "\n"
endfunc
imap <silent> <F5> <ESC><F5>
noremap <silent> <F5> :call CompileRun() <CR>
func! CompileRun()
	exec "w"
	exec "!javac %"
	"exec "!time ./%<"
	exec "!java %<"
	echo "\n\n"
endfunc
