set number relativenumber
set nu rnu
set ai 
set tabstop=4
set shiftwidth=4
set hlsearch
syntax on
set mouse=a
set background=dark

:inoremap ( ()<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
:inoremap [ []<Esc>i
:inoremap {<CR> {<CR>}<Esc>ko

:nnoremap <F12> <Esc>:w<CR>
:nnoremap <F10> <Esc>:!./a.out<CR>
:nnoremap <F9> <Esc>:!g++ %<CR>
:nnoremap <c-l> :nohl<CR>

:set expandtab


filetype indent on
let g:powerline_pycmd="py3"
set t_Co=256
set laststatus=2



