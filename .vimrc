set nocompatible 	 "non compatible with vi 
"set number 			 "add line number
set hlsearch 		 "add highlight when search
set incsearch 		 "start searching as soon as you type
filetype plugin on 
syntax enable 		 "highligh syntax
set tabstop=4 
set viminfo+=n~/.vim/viminfo "change viminfo folder
"Plugins
	call plug#begin('~/.vim/plugged')
	"brackets
	Plug 'frazrepo/vim-rainbow'
	"Python completion 
	Plug 'davidhalter/jedi-vim'
	"Vim figutive
	Plug 'tpope/vim-fugitive'
	"Theme
	Plug 'morhetz/gruvbox'
	"Vimwiki
	Plug 'vimwiki/vimwiki'
	"Markdown
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
	"Vim go
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	"Split join Go structures
	Plug 'AndrewRadev/splitjoin.vim'
	Plug 'ctrlpvim/ctrlp.vim'
	"Lightmode for text paragraphs
	Plug 'junegunn/limelight.vim'
	"Vim surround
	Plug 'tpope/vim-surround'
	"Close brackets
	Plug 'cohama/lexima.vim'
	"Airline
	Plug 'vim-airline/vim-airline'
	call plug#end()
	
"Vim wiki
	"Vimwiki will use markdown syntax
	let g:vimwiki_list = [{'path': '~/vimwiki','syntax': 'markdown', 'ext': '.md'}]
	"Markdown
		"Disable server autostart
		let g:mkdp_auto_start = 0
		"Disable refresh during typing
		let g:mkdp_refresh_slow = 1
		" \m open server
	    nmap <leader>m <Plug>MarkdownPreview

"Color schema
	"set default color theme
	colorscheme gruvbox
	"dark back
	set bg=dark
	"fix theme when inside tmux
	set t_Co=256
	"Limelight
		" when in lightmode then all code is grey 
		let g:limelight_conceal_ctermfg = 240
		"Activate limelight on \+l
		noremap <silent> <Leader>l :Limelight<CR>
		"Disable limelight on \+L
		noremap <silent> <Leader>L :Limelight!<CR>

"Splits
	"when horizontal split then window appears in right
	set splitbelow splitright
	"enable arrows in insert mod
		inoremap <esc>a <up>
		inoremap <esc>b <down>
		inoremap <esc>c <right>
		inoremap <esc>d <left>
	"\+ and \- change vertical window size
	noremap <silent> <Leader>+ :vertical resize +5<CR>
	noremap <silent> <Leader>- :vertical resize -5<CR>

"Utils
	"\o will create new line without switching to insert mode
	nnoremap <leader>o o<esc>
	nnoremap <leader>O O<esc>
	"Firstly press shift+v then highlight using arrows then press j or k it
	"will move lines up or down
    vnoremap J :m '>+1<CR>gv=gv
	vnoremap K :m '<-2<CR>gv=gv	
	"jj - normal mode
	inoremap jj <esc>

"Rainbow
	"enable brackets for all files
	let g:rainbow_active=1
	"rainbow colors
	let g:rainbow_ctermfgs = ['darkblue', 'darkgreen', 'darkyellow', 'darkred', 'magenta']

"Directories
	"Remove banner
	let g:netrw_banner = 0
	"Size in left
	let g:netrw_winsize = 15
	"shift+arrow move cursor from dir to file
	nmap <s-down>  <c-w>j
	nmap <s-up>    <c-w>k
	nmap <s-left>  <c-w>h
	nmap <s-right> <c-w>l

"Git bindings
	"Open Gdiff vertically
	set diffopt+=vertical

"Go bindings
	"highlight functions
	let g:go_highlight_functions = 1
	"when cursor in function it will highligh args for func
	let g:go_auto_type_info = 1
	"enable :gorename
	let g:go_rename_command = 'gopls'
	"\r GoRun
	autocmd FileType go noremap <silent> <Leader>r :GoRun<CR>
	"\b GoBuild
	autocmd FileType go noremap <silent> <Leader>b :GoBuild<CR>
	"Ctrl space add hint
	autocmd FileType go inoremap <C-@> <C-x><C-o>

"CtrlP
	"Ignore files
	let g:ctrlp_custom_ignore = {
  	\ 'dir':  '\v[\/]\.(git|hg|svn)$|target/*',
  	\ }
	"Disable cache
	let g:ctrlp_use_caching = 0
	"Activate on Ctrl+F
	let g:ctrlp_map = '<c-f>'
"Airline
	let g:airline_detect_modified=1
	let g:airline_theme='dark'
	let g:airline#extensions#po#enabled = 0
	let g:airline#extensions#whitespace#enabled = 0

"Vim surround
	 let b:surround_{char2nr('b')} = "**\r**"
