"Go bindings
		"highlight functions
		let g:go_highlight_functions = 1
		"Highlight extra types
		let g:go_highlight_extra_types = 1
		let g:go_highlight_types = 0
		"when cursor in function it will highligh args for func
		let g:go_auto_type_info = 1
		"enable :gorename
		"		let g:go_rename_command = 'gopls'
		"Highlight function
		let g:go_highlight_function_calls = 1
		"gd will be handled my coc
		let g:go_def_mapping_enabled = 0
		"Highlight operators
		let g:go_highlight_operators = 1
     	let g:go_highlight_debug = 1
		"\r GoRun
		autocmd FileType go noremap <silent> <Leader>r :GoRun<CR>
		"\h highlight
		autocmd FileType go noremap <silent> <Leader>h :GoSameIds<CR>
		"\b GoBuild
		autocmd FileType go noremap <silent> <Leader>b :GoBuild<CR>
		"\i show info
		autocmd FileType go nmap <Leader>i <Plug>(go-info)
		"\u references to method
		autocmd FileType go nmap <Leader>u :GoReferrers<CR>
		"\n debug next
		autocmd FileType go nmap <Leader>n :GoDebugNext<CR>
		"/d start debug
		autocmd FileType go nmap <Leader>d :GoDebugStart<CR>
