"only enable normal mode functions.
let g:user_emmet_mode='n'
"trigger on ,,
let g:user_emmet_leader_key=','
"Enable in all mods
let g:user_emmet_mode='a'
"Emmet works only for html and css files
autocmd FileType html,css,js EmmetInstall
