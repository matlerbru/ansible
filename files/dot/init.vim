
call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'

call plug#end()

" Enable LSP
lua << EOF
  require'lspconfig'.gopls.setup{}
EOF

autocmd CursorMoved,CursorMovedI * call Center_cursor()

function! Center_cursor()
    let pos = getpos(".")
    normal! zz
    call setpos(".", pos)
endfunction
set cursorLine
set scrolloff=999
autocmd CursorMoved,CursorMovedI * execute "set colorcolumn=" . virtcol('.')



set number
set relativenumber



inoremap jk <Esc>
nnoremap e :NERDTreeToggle<CR>
