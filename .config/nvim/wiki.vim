"Vim wiki
		"Vimwiki will use markdown syntax
		let g:vimwiki_list = [{'path': '~/vimwiki','syntax': 'markdown', 'ext': '.md'}]
		autocmd FileType markdown let b:surround_{char2nr('*')} = "**\r**"
		autocmd FileType markdown inoremap <expr> <CR>   pumvisible() ? "\<CR>"   : "<Esc>:VimwikiReturn 1 5<CR>"
		autocmd FileType markdown inoremap <silent> <buffer> <expr> <CR>   pumvisible() ? "\<CR>"   : "<Esc>:VimwikiReturn 1 5<CR>"
"Markdown
		let g:mkdp_markdown_css = '$HOME/.config/nvim/screen.css'

		"Disable server autostart
		let g:mkdp_auto_start = 0
		"Disable refresh during typing
		let g:mkdp_refresh_slow = 1
		nmap <leader>m <Plug>MarkdownPreview
