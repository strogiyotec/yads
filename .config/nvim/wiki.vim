"Vim wiki
		"Vimwiki will use markdown syntax
		let g:vimwiki_list = [{'path': '~/vimwiki','syntax': 'markdown', 'ext': '.md'}]
		inoremap <expr> <CR>   pumvisible() ? "\<CR>"   : "<Esc>:VimwikiReturn 1 5<CR>"
		inoremap <silent> <buffer> <expr> <CR>   pumvisible() ? "\<CR>"   : "<Esc>:VimwikiReturn 1 5<CR>"
"Markdown
		let g:mkdp_markdown_css = '/home/strogiyotec/.config/nvim/screen.css'
"		let g:mkdp_highlight_css = '/home/strogiyotec/.config/nvim/screen.css'

		"Disable server autostart
		let g:mkdp_auto_start = 0
		"Disable refresh during typing
		let g:mkdp_refresh_slow = 1
		nmap <leader>m <Plug>MarkdownPreview
