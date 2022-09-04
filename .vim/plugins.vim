
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'preservim/NERDTree'
Plug 'mattn/emmet-vim'

Plug 'morhetz/gruvbox'

Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neovim/nvim-lspconfig'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'Yggdroot/indentLine'

"Plug 'myhere/vim-nodejs-complete'
"Plug 'chrisbra/vim-commentary'
"
call plug#end()
