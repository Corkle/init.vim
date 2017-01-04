" run :PlugInstall to install plugins

" plugins directory
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'elixir-lang/vim-elixir', { 'for' : 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for' : 'elixir' }

" Initialize plugin system
call plug#end()

:color ron

map <C-n> :NERDTreeToggle<CR>
