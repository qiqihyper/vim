set tabstop=8
set sw=8
set cindent

imap <silent> <F4> <ESC><F4>
noremap <silent> <F4> :call Compile() <CR>
func! Compile()
	exec "w"
	exec "!g++ % -o %<"
	echo "\n"
endfunc
imap <silent> <F5> <ESC><F5>
noremap <silent> <F5> :call CompileRunGcc() <CR>
func! CompileRunGcc()
	exec "w"
	exec "!g++ % -o %<"
	"exec "!time ./%<"
	exec "!./%<"
	echo "\n\n"
endfunc
imap <silent> <F6> <ESC><F6>
noremap <silent> <F6> :call RunGdb() <CR>
func! RunGdb()
    exec "w"
	exec "!g++ % -g -o %<"
	exec "!gdb ./%<"
endfunc
