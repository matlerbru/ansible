
call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'

call plug#end()

set number
set relativenumber

inoremap jk <Esc>
nnoremap e :NERDTreeToggle<CR>