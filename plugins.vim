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
" Plug 'gabrielelana/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'rust-lang/rust.vim'
" Plug 'bfrg/vim-cpp-modern'
Plug 'jaxbot/semantic-highlight.vim'
" Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'gisphm/vim-gitignore'
Plug 'andys8/vim-elm-syntax'
Plug 'sheerun/vim-polyglot'
" web
" Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'isruslan/vim-es6'
Plug 'ap/vim-css-color'
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
"godot
Plug 'calviken/vim-gdscript3'
" python
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-python/python-syntax'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'tmhedberg/SimpylFold'
" Plug 'Yggdroot/indentLine'
" vim wiki
Plug 'vimwiki/vimwiki'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" themes
Plug 'romainl/Apprentice'
" prose
Plug 'junegunn/goyo.vim'
" html
Plug 'docunext/closetag.vim'
" tpope
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'yuttie/comfortable-motion.vim'
" run shell commands in tmux split
Plug 'benmills/vimux'
" ranger
Plug 'rbgrouleff/bclose.vim'
" requires bclose to replace netrw ( :Ex )
Plug 'francoiscabrol/ranger.vim'
" animate
" Plug 'camspiers/animate.vim'
" Plug 'camspiers/lens.vim'
" other
Plug 'wellle/targets.vim'
Plug 'adelarsq/vim-matchit'
Plug 'Valloric/MatchTagAlways'
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
call plug#end()

" indent guides
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=black
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

let g:ranger_replace_netrw = 1

" python-syntax
let g:python_highlight_all = 1

" markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

"pymode
" let g:pymode_python = 'python3'
" coc
set cmdheight=2
nmap gd <Plug>(coc-definition)
" nmap <leader>d <Plug>(coc-
" go to next warning (or error)
nmap ]w <Plug>(coc-diagnostic-next)
nmap [w <Plug>(coc-diagnostic-prev)
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
" function used by K
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" Does function signatures after 'jumping to a placeholder' ??
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
set shortmess+=c
