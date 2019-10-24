set nocompatible
" Installs and loads Vim Plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" git
Plug 'airblade/vim-gitgutter'
" syntax highlighting
Plug 'gabrielelana/vim-markdown'
Plug 'rust-lang/rust.vim'
Plug 'bfrg/vim-cpp-modern'
Plug 'jaxbot/semantic-highlight.vim'
" web
Plug 'pangloss/vim-javascript'
Plug 'ap/vim-css-color'
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
" python
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-python/python-syntax'
Plug 'jeetsukumaran/vim-pythonsense'
" Plug 'Yggdroot/indentLine'
" vim wiki
Plug 'vimwiki/vimwiki'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" themes
Plug 'romainl/Apprentice'
" html
Plug 'docunext/closetag.vim'
" tpope
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
" run shell commands in tmux split
Plug 'benmills/vimux'
" other
Plug 'wellle/targets.vim'
call plug#end()

" indent guids
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

let g:python_highlight_all = 1
