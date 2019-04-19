filetype indent plugin on
" turn on syntax highlighting
syntax on
" Sets a column marker at 80 characters
set colorcolumn=80

set laststatus=2 " always display status
set confirm

" indentation
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set smartindent

" do not move cursor to the start of line on <C-d> etc.
set nostartofline
" no line numbers
set norelativenumber
set nonumber
" but we still want a left margin
set foldcolumn=2

" line,column numbers in status bar
set ruler

set mouse=a " enable use of mouse

" autocomplete
set wildmenu
" show matching [{()}]
set showmatch
set mps+=<:>
set mat=5
" show commands
set showcmd

" searching
set incsearch
set ignorecase
set smartcase
set hlsearch

" don't ever beep at me
set visualbell
set noerrorbells

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" set terminal's title
set title

" mac backspace fix
set backspace=indent,eol,start

" COLORS {{{

" color scheme
colorscheme gruvbox
set background=dark

" Set interface colors
highlight CWD ctermfg=grey ctermbg=black guibg=#504945 guifg=#000000 gui=bold
highlight File ctermfg=red ctermbg=black guibg=#504945 guifg=#cbe1b1
highlight FoldColumn ctermbg=black guibg=#706965

highlight ColorColumn ctermbg=black guibg=#706965

highlight lineNr guibg=#504945 guifg=grey
highlight CursorLineNr guibg=#222222 guifg=white gui=bold

" less obtrusive search highlighting
highlight Search ctermbg=none ctermfg=red cterm=italic,underline gui=bold,underline guibg=#555599 guifg=white
" }}}

" buffers
set hidden " allows hidden unsaved buffers
set confirm " won't quit with unsaved buffers

" splits
set splitbelow
set splitright

" wrapping and stuff
set showbreak=\ ↳\ ↳\ ↳\ 
set breakindent
set breakindentopt=sbr,shift:4
set nolist
set wrap
set linebreak breakat&vim

set list
set listchars=tab:\|\ ,trail:X

" puts return character in numberline
set cpo=n

" enable fenced code block syntax highlighting in markdown
let g:markdown_fenced_languages = ['html', 'javascript', 'js=javascript', 'css']
