" Installs and loads Vim Plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" git
Plug 'airblade/vim-gitgutter'
" syntax
Plug 'gabrielelana/vim-markdown'
Plug 'rust-lang/rust.vim'
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bfrg/vim-cpp-modern'
Plug 'ap/vim-css-color'
" themes
Plug 'dracula/vim', {'as':'dracula'}
Plug 'morhetz/gruvbox'
Plug 'ajh17/spacegray.vim'
Plug 'kkpmw/sacredforest-vim'
Plug 'jnurmine/Zenburn'
Plug 'keith/parsec.vim'
Plug 'junegunn/seoul256.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'mswift42/vim-themes'
Plug 'romainl/Apprentice'
Plug 'chriskempson/base16-vim'
" tpope
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
call plug#end()
