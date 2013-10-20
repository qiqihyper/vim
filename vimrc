set nocompatible "关闭vi兼容性
set nu
filetype plugin indent on
set nohls "关闭匹配的高亮显示
set incsearch "设置快速搜索

set langmenu=zh_CN.UTF-8


"对C/C++编程映射出 F4--编译但不运行 F5--编译运行 F6--调用gdb调试
au BufRead,BufNewFile *.{c,cpp,cc,h} exec ":call CCCompile()"
func CCCompile()
	map <F4> :call Compile() <CR>
	func! Compile()
		exec "w"
		exec "!g++ % -o %<"
	endfunc

	map <F5> :call CompileRunGcc() <CR>
	func! CompileRunGcc()
		exec "w"
		exec "!g++ % -o %<"
		exec "!time ./%<"
	endfunc
	map <F6> :call RunGdb() <CR>
	func! RunGdb()
		exec "w"
		exec "!g++ % -g -o %<"
		exec "!gdb ./%<"
	endfunc
endfunc

"映射F2键功能为除去空行
nnoremap <F2> :g/^\s*$/d<CR>

"编辑 markdown 文件时几处快捷键
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} exec ":call FileTypeJudge()"
func FileTypeJudge()
		set filetype=mkd
		set nonu
		imap <C-x> **<ESC>i
		imap <C-b> ****<ESC>hi
		imap <C-z> ``<ESC>i
		imap <C-c> {%highlight %}<CR>{%endhighlight%}<ESC>khi
		imap <C-l> []()<ESC>hhi
		imap <C-p> ![]()<ESC>hhi
endfunc
