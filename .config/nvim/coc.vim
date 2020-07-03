set hidden 
set nobackup
set nowritebackup

set cmdheight=2 " More space for message

set updatetime=300 " Make it faster

set shortmess+=c

" ctrl space triiger coc
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gI <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-definition)
