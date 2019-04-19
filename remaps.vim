""""""""""""""""""""""""""""""""""""""""
" LEADER
""""""""""""""""""""""""""""""""""""""""

" leader is space
let mapleader = "\<Space>"

" these are a little junk and could be a function
" nnoremap <leader>eh :e <C-R>%<C-H>h<CR>
" nnoremap <leader>ec :e <C-R>%<C-H>c<CR>
" nnoremap <leader>eH :e <C-R>%<C-H><C-H><C-H>h<CR>
" nnoremap <leader>eC :e <C-R>%<C-H>cpp<CR>
autocmd FileType c nnoremap <buffer> <leader>eh :e %:r.h<CR>
autocmd FileType cpp nnoremap <buffer> <leader>eh :e %:r.h<CR>
autocmd BufEnter,Bufnew *.h nnoremap <buffer> <leader>ec :e %:r.c*<CR>

" easy vimrc editing
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

" yanks the whole file and returns cursor to where you were
nnoremap <leader>y gg"*yG``

" saves all open buffers
nnoremap <leader>W :wall<CR>

" EZ window switching... mostly been using c-w though. might ditch
" nnoremap <leader>h <C-w>h
" nnoremap <leader>j <C-w>j
" nnoremap <leader>k <C-w>k
" nnoremap <leader>l <C-w>l

nnoremap <leader>Td :put =strftime('%m/%d/%y')<CR>


nnoremap <leader>N :e ~/writing/index.md<CR>
nnoremap <leader>cc :!g++ -g -Wall -ansi *.cpp<CR>
nnoremap <leader>cr :!g++ -g -Wall -ansi *.cpp && ./a.out<CR>

nnoremap <leader><leader> :nohl<CR>

""""""""""""""""""""""""""""""""""""""""
" NORMAL MODE
""""""""""""""""""""""""""""""""""""""""

" for some reason this is launching vim in replace mode?
" looks like it's a bug with vim.
" nnoremap <Esc> :nohl<CR>

" buffers
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>

" tabs
nnoremap [t :tabp<CR>
nnoremap ]t :tabn<CR>

" vertical new files instead of horizontal
nnoremap <C-w>n :vnew<CR>

""""""""""""""""""""""""""""""""""""""""
" INSERT MODE
""""""""""""""""""""""""""""""""""""""""

" for functions and stuff
inoremap (<CR> (<CR>)<C-o>O
inoremap [<CR> [<CR>]<C-o>O
inoremap {<CR> {<CR>}<C-o>O

" for keyboards that I can't remap
" capslock on
inoremap kj <Esc>
inoremap jk <Esc>

""""""""""""""""""""""""""""""""""""""""
" VISUAL MODE
""""""""""""""""""""""""""""""""""""""""

"visual mode
vnoremap < <gv
vnoremap > >gv


