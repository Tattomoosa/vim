""""""""""""""""""""""""""""""""""""""""
" LEADER
""""""""""""""""""""""""""""""""""""""""

" leader is space
let mapleader = "\<Space>"

" easy vimrc editing
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

" yanks the whole file and returns cursor to where you were
nnoremap <leader>y gg"*yG``

" saves all open buffers
nnoremap <leader>w :wall<CR>

""""""""""""""""""""""""""""""""""""""""
" NORMAL MODE
""""""""""""""""""""""""""""""""""""""""

" for some reason this is launching vim in replace mode?
" nnoremap <Esc> :nohl<CR>

" buffers
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>

" tabs
nnoremap [t :tabp<CR>
nnoremap ]t :tabn<CR>

""""""""""""""""""""""""""""""""""""""""
" INSERT MODE
""""""""""""""""""""""""""""""""""""""""

" for functions and stuff
inoremap (<CR> (<CR>)<C-o>O
inoremap [<CR> [<CR>]<C-o>O
inoremap {<CR> {<CR>}<C-o>O

imap ></ ></<C-[>F>a

"visual mode
vnoremap < <gv
vnoremap > >gv
