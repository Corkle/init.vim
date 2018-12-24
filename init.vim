if (has("termguicolors"))
  set termguicolors
endif

set nocompatible
set mouse=r

" ###############
"    VIM-PLUG 
" ###############

" run :PlugInstall to install plugins

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }

Plug 'kassio/neoterm'
Plug 'janko-m/vim-test'

Plug 'itchyny/lightline.vim'

Plug 'elixir-lang/vim-elixir', { 'for' : 'elixir' }
" Plug 'slashmili/alchemist.vim', { 'for' : 'elixir' }
Plug 'pangloss/vim-javascript'

Plug 'guns/vim-clojure-static'

call plug#end()

" ###############
"      SETUP
" ###############

set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set number
syntax on 
filetype plugin indent on

let g:onedark_termcolors=256
let g:lightline= {
  \ 'colorscheme': 'onedark',
  \ }

"colorscheme molokai
colorscheme onedark

" tab completion for files in path recursively
set path+=**
set wildmenu

let test#strategy = 'neoterm'
" let test#filename_modifier = ':p'

" ###############
"    MAPPINGS
" ###############

let mapleader = ","
" Command Mode
nnoremap ; :
" Undo
nnoremap U u
nnoremap u <NOP>
set pastetoggle=<F3>
" NerdTree
nmap <C-n> :NERDTreeToggle<CR>
" Window Focus
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Window Resize
nnoremap _ <C-w>-
nnoremap + <C-w>+
nnoremap < <C-w><
nnoremap > <C-w>>
" exit Terminal Mode
tnoremap <Esc> <C-\><C-n>
" Tabs
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap td :tabclose<CR>
" open current buffer in new tab
nnoremap t<Space> :tab split<CR>
" quick switch last buffer
nnoremap <leader>b :b#<CR>
" vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <leader>T :TestFile<CR>
nmap <leader>r :TestLast<CR>
" neoterm
nmap <silent> TT :Topen<CR><C-w>bi
nmap <silent> Tt :Tclose<CR>


