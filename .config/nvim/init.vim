set nu  			 "shows current line number	
set relativenumber   "add line number
set incsearch        "start searching as soon as you type
syntax enable        "highligh syntax
set tabstop=4
set inccommand=split "interactive search replace
"Plugins
		call plug#begin('~/.config/nvim/plugged/')
"Brackets
		"Colorful brackets
		Plug 'frazrepo/vim-rainbow'
		"Close brackets
		Plug 'cohama/lexima.vim'
"GIT	
		"Vim figutive
		Plug 'tpope/vim-fugitive'
		"Show git message
		Plug 'rhysd/git-messenger.vim'
		"Git log visualization
		Plug 'junegunn/gv.vim'
		"Undo tree
		Plug 'mbbill/undotree'
		"Theme
		Plug 'gruvbox-community/gruvbox'
		"Lua syntax
		Plug 'tbastos/vim-lua'
"Notes	
		"Vimwiki
		Plug 'vimwiki/vimwiki'
		"Markdown preview
		Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
		"Lightmode for text paragraphs
		Plug 'junegunn/limelight.vim'
		Plug 'junegunn/goyo.vim'
		"Grammar
		Plug 'rhysd/vim-grammarous'
"Coding
		"Http
		Plug 'bayne/vim-dot-http'
		"Vim go
		Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
		"Ctrl+f for search
		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
		Plug 'junegunn/fzf.vim'
		"Vim surround
		Plug 'tpope/vim-surround'
		"Exchange
		Plug 'tommcdo/vim-exchange'
		"Airline
		Plug 'vim-airline/vim-airline'
		"Snippets
		Plug 'SirVer/ultisnips'
		"Comments
		Plug 'tpope/vim-commentary'
		"Tabular
		Plug 'godlygeek/tabular'
		"Add smooth scrolling
		Plug 'psliwka/vim-smoothie'
		"s and S for search
		Plug 'justinmk/vim-sneak'
		"Calendar
		Plug 'itchyny/calendar.vim'
		"Emmet
		Plug 'mattn/emmet-vim'
		"Cocnvim
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		"Prettier
		Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
		call plug#end()
"Git
let g:git_messenger_no_default_mappings=v:true
nmap <Leader>gm :GitMessenger<CR>

"Color schema
		"set default color theme
		colorscheme gruvbox
		"fix theme when inside tmux
		set t_Co=256
		set background=dark		
		"Add transparency
		hi Normal guibg=NONE ctermbg=NONE
"Limelight
		"when in lightmode then all code is grey 
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
		"Firstly press shift+v then 
		"highlight using arrows then press j or k it
		"will move lines up or down
		vnoremap J :m '>+1<CR>gv=gv
		vnoremap K :m '<-2<CR>gv=gv
		"jj - normal mode
		inoremap jj <esc>

		"  Copy to clipboard
		vnoremap  <leader>y  "+y
		nnoremap  <leader>Y  "+yg_
		nnoremap  <leader>y  "+y
		nnoremap  <leader>yy  "+yy
		
		"  Paste from clipboard
		nnoremap <leader>p "+p
		nnoremap <leader>P "+P
		vnoremap <leader>p "+p
		vnoremap <leader>P "+P
	
		" Ctrl+s saves changes
		nmap <C-s> :w<CR>
		"Run xrdb whenever Xdefaults or Xresources are updated.
		autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
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
		
"Go settings
		source ~/.config/nvim/go.vim
		
"fzf
		map <C-f> <Esc><Esc>:Files!<CR>
		inoremap <C-f> <Esc><Esc>:BLines!<CR>
		map <C-p> <Esc><Esc>:Ag!<CR>
		map <C-g> <Esc><Esc>:BCommits!<CR>
		map <C-b> <Esc><Esc>:Buffers<CR>

"Airline
		let g:airline_detect_modified=1
		let g:airline_theme='dark'
		let g:airline#extensions#po#enabled = 0
		let g:airline#extensions#whitespace#enabled = 0
		
"Vim sneak
		"Add vimium like notations for search
		let g:sneak#label = 1
		"f works as single character s command
		map f <Plug>Sneak_f
		"F works as single character s command
		map F <Plug>Sneak_F
		"t works as single character S command
		map t <Plug>Sneak_t
		"T works as single character S command
		map T <Plug>Sneak_T

"Vim surround
        nmap yG  <Plug>YSurround
		"Add **\r** on b
		let b:surround_{char2nr('*')} = "**\r**"
"Undotree
		if has("persistent_undo")
		    set undodir="/tmp/.undodir"
			set undofile
		endif
		nnoremap <leader>t :UndotreeToggle<cr>	
"GV
		nnoremap <leader>gv :GV!<cr>

"Tmux
		"Fix cursor in tmux
		let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
		"Hide status bar inside vim
		"autocmd VimEnter,VimLeave * silent !tmux set status
"Source external configs
		"Emmet
		source ~/.config/nvim/emmet.vim
		"Calendar
		source ~/.config/nvim/calendar.vim
		"Goyo
		source ~/.config/nvim/goyo.vim
		"Cocnvim
		source ~/.config/nvim/coc.vim
		"Wiki
		source ~/.config/nvim/wiki.vim
