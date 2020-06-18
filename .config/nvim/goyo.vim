"When leave goyo then return transparency
function! s:goyo_leave()
		hi Normal guibg=NONE ctermbg=NONE
endfunction
autocmd! User GoyoLeave nested call <SID>goyo_leave()
