" .md is a markdown file
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

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
