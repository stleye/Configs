
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'preservim/NERDTree'

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

"
call plug#end()

