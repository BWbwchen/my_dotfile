let mapleader = " " 
let g:powerline_pycmd="py3" 
let NERDTreeShowHidden=1 
let NERDTreeWinSize=20
let NERDTreeDirArrows = 1



" basic setting
set nu
set ai 
set tabstop=4
set shiftwidth=4
set hlsearch
syntax on
set mouse=v
set background=dark
set showcmd
set expandtab
set t_Co=256
set laststatus=2
set noshowmatch
set clipboard=unnamed
set switchbuf+=newtab
set cursorline
set colorcolumn=80
set foldmethod=indent
filetype indent on

" parentheses
"inoremap ( ()<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap [ []<Esc>i
"inoremap {<CR> {<CR>}<Esc>ko

" short cut for programing 
nnoremap <F12> <Esc>:w<CR>
nnoremap <F9> <Esc>:!g++ -g %<CR>
nnoremap <F10> <Esc>:!./a.out<CR>
nnoremap <c-l> :nohl<CR>
nnoremap <leader>w :wq<CR>
nnoremap <leader>q :q<CR>

" for change scene
nnoremap <leader>h :vertical resize -5<CR>
nnoremap <leader>l :vertical resize +5<CR>
nnoremap <leader>j :resize +5<CR>
nnoremap <leader>k :resize -5<CR>

" switch between tab
" Go to tab by number
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt


" switch between windows
nnoremap <leader>b <C-w>

map <F4> :execute "vimgrep /" .expand("<cword>") . "/j **" <Bar> cw<CR>

" short cut for plugin
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader><F1> <C-]>
nnoremap <leader><F2> <C-t>


" for plugin 
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
call plug#end()

