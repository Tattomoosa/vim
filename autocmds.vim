autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.cpp *.h set makeprg=g++
autocmd BufNewFile,BufReadPost *.gd
      \ set tabstop=2
      \ shiftwidth=2
      \ expandtab=off
autocmd BufNewFile,BufReadPost *.rasi set filetype=css
autocmd BufNewFile,BufReadPost *.py set makeprg=python
autocmd BufNewFile,BufReadPost *.py setlocal nonumber
autocmd BufNewFile,BufReadPost *.ts set tabstop=2
autocmd BufNewFile,BufReadPost ~/cs333/*.c
  \ set tabstop=2
  \ shiftwidth=2
  \ expandtab
autocmd BufNewFile,BufReadPost ~/cs333/*.c
  \ nnoremap <buffer> <leader>F o#ifdef CS333_P3<CR>#endif<C-o>O
