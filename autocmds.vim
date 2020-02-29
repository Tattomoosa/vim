" .md is a markdown file
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.cpp *.h set makeprg=g++
autocmd BufNewFile,BufReadPost *.py setlocal nonumber
" nnoremap <leader>c :make -g -Wall *.cpp *.o<CR>
autocmd BufNewFile,BufReadPost *.ts set tabstop=2
autocmd BufNewFile,BufReadPost ~/cs333/*.c
  \ set tabstop=2
  \ shiftwidth=2
  \ expandtab
autocmd BufNewFile,BufReadPost ~/cs333/*.c
  \ nnoremap <buffer> <leader>F o#ifdef CS333_P3<CR>#endif<C-o>O
