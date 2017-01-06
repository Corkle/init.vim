" PLUGINS - run :PlugInstall to install plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'

Plug 'elixir-lang/vim-elixir', { 'for' : 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for' : 'elixir' }

Plug 'janko-m/vim-test'

call plug#end()

set expandtab
set showmatch
set number
" Use bad colors until 24-bit comes to Win10 Bash
:color ron
" tab completion for files in path recursively
set path+=**
set wildmenu

" CUSTOM MAPPINGS

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
" Terminal Normal Mode
tnoremap <Esc> <C-\><C-n>
" Tabs
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap td :tabclose<CR>
" open current buffer in new tab
nnoremap t<Space> :tab split<CR>
