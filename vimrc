set nocompatible
filetype off

set tabstop=4 shiftwidth=4 expandtab
set relativenumber
set incsearch hlsearch

let g:hardtime_default_on = 1

syntax on
colorscheme nofrils-dark
let g:nofrils_heavylinenumbers=1

let g:ctrlp_map = '<c-p>'

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0

  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
endif


