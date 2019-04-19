" Autoload vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'gabrielelana/vim-markdown'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
call plug#end()
