
let g:deoplete#enable_at_startup = 1
let mapleader = " " 
let NERDTreeShowHidden=1 
let NERDTreeWinSize=20
let NERDTreeDirArrows = 1

let g:clipboard = {
  \   'name': 'xclip-xfce4-clipman',
  \   'copy': {
  \      '+': 'xclip -selection clipboard',
  \      '*': 'xclip -selection clipboard',
  \    },
  \   'paste': {
  \      '+': 'xclip -selection clipboard -o',
  \      '*': 'xclip -selection clipboard -o',
  \   },
  \   'cache_enabled': 1,
  \ }

" basic setting
set guicursor=
set guifont=Monaco
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
set clipboard+=unnamedplus
set switchbuf+=newtab
set cursorline
set colorcolumn=80
set foldmethod=indent
filetype indent on

" reload files changed outside vim
set autoread
" Triger `autoread` when files changes on disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None


" Start scrolling when we're 8 lines away from margins
set scrolloff=8

" parentheses
"inoremap ( ()<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap [ []<Esc>i
"inoremap {<CR> {<CR>}<Esc>ko
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"<Paste>
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" short cut for programing 
nnoremap <F12> <Esc>:w<CR>
nnoremap <F9> <Esc>:!make<CR>
nnoremap <F10> <Esc>:!./a<CR>
nnoremap <F1> <Esc>:%y<CR>
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

" for automatically change to normal mode
au CursorHoldI * stopinsert
au InsertEnter * let updaterestore=&updatetime | set updatetime=5000
au InsertLeave * let &updatetime=updaterestore


" for plugin 
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-clangx'
call plug#end()

" Change clang binary path
call deoplete#custom#var('clangx', 'clang_binary', '/usr/local/bin/clang')

" Change clang options
call deoplete#custom#var('clangx', 'default_c_options', '')
call deoplete#custom#var('clangx', 'default_cpp_options', '')
set completeopt-=preview
set completeopt+=longest
