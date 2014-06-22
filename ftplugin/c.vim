let g:ycm_global_ycm_extra_conf = '/home/qiqi/apps/vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set tabstop=4
set sw=4
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
imap <silent> <F7> <ESC><F7>
noremap <silent> <F7> :call RunMake() <CR>
func! RunMake()
	exec "w"
	exec "!g++ % -o %<"
	"exec "!time ./%<"
	exec "!./%< < %<.txt"
	echo "\n\n"
endfunc
