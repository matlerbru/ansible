
call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'

call plug#end()

" Enable LSP
lua << EOF
  require'lspconfig'.gopls.setup{}
EOF

set number
set relativenumber

inoremap jk <Esc>
nnoremap e :NERDTreeToggle<CR>