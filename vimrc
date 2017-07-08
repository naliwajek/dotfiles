set nocompatible
filetype off

set tabstop=2
set shiftwidth=2
set expandtab

set number

autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

syntax on
colorscheme nofrils-dark
let g:nofrils_heavylinenumbers=1
