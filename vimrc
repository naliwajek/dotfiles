set nocompatible
filetype off

set autoindent tabstop=4 shiftwidth=4 expandtab
set incsearch hlsearch ignorecase
set relativenumber
set noswapfile

let g:netrw_localrmdir='rm -r'
let g:netrw_dirhistmax=0

colorscheme nofrils-dark
let g:nofrils_heavylinenumbers=1
let g:nofrils_heavycomments=1
let g:nofrils_strbackgrounds=1
syntax on

let g:ctrlp_map = '<c-p>'

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0

  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
endif

nmap ; :
