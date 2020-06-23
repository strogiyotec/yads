"Go bindings
		"highlight functions
		let g:go_highlight_functions = 1
		"when cursor in function it will highligh args for func
		let g:go_auto_type_info = 1
		"enable :gorename
		let g:go_rename_command = 'gopls'
		"Highlight function
		let g:go_highlight_function_calls = 1
		"gd will be handled my coc
		let g:go_def_mapping_enabled = 0
		"Highlight operators
		let g:go_highlight_operators = 1
		"\r GoRun
		autocmd FileType go noremap <silent> <Leader>r :GoRun<CR>
		"\h highligh
		autocmd FileType go noremap <silent> <Leader>h :GoSameIds<CR>
		"\b GoBuild
		autocmd FileType go noremap <silent> <Leader>b :GoBuild<CR>
		"\i show info
		autocmd FileType go nmap <Leader>i <Plug>(go-info)
		"Ctrl space add hint
"		autocmd FileType go inoremap <C-Space> <C-x><C-o>
