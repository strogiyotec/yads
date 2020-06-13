"Vim wiki
		"Vimwiki will use markdown syntax
		let g:vimwiki_list = [{'path': '~/vimwiki','syntax': 'markdown', 'ext': '.md'}]
		
"Markdown
		"Disable server autostart
		let g:mkdp_auto_start = 0
		"Disable refresh during typing
		let g:mkdp_refresh_slow = 1
		nmap <leader>m <Plug>MarkdownPreview
