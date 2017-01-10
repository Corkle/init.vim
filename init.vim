set nocompatible

" ###############
"    VIM-PLUG 
" ###############

" run :PlugInstall to install plugins

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }

Plug 'kassio/neoterm'
Plug 'janko-m/vim-test'

Plug 'vim-airline/vim-airline'

Plug 'elixir-lang/vim-elixir', { 'for' : 'elixir' }
" Plug 'slashmili/alchemist.vim', { 'for' : 'elixir' }

call plug#end()

" ###############
"      SETUP
" ###############

set expandtab
set showmatch
set number
syntax on

" Use bad colors until 24-bit comes to Win10 Bash
:color ron

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


