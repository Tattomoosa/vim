" .md is a markdown file
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.cpp *.h set makeprg=g++
autocmd BufNewFile,BufReadPost *.gd
      \ set tabstop=2
      \ shiftwidth=2
      \ expandtab=off
autocmd BufNewFile,BufReadPost *.rasi set filetype=css
" autocmd BufNewFile,BufReadPost .gitignore set filetype=ignore

" autocmd BufNewFile,BufReadPost *.py set makeprg=python

" nnoremap <leader>c :make -g -Wall *.cpp *.o<CR>

" restore cursor position
" function! ResetCursor()
"   if line("'\"") <= line("$")
"     normal! g`"
"     return 1
"   endif
" endfunction

"augroup resCur
  " removes any existing commands in augroup
  "autocmd!
  " on entering any buffer, call 
  " autocmd BufWinEnter * call ResetCursor()
" augroup END
