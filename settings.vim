" Sets the color scheme to gruvbox
source ~/.config/vim/color-schemes/gruvbox/colors/gruvbox.vim

" Sets a column marker at 80 characters
set colorcolumn=80

" no line numbers
set norelativenumber
set nonumber
" but we still want a left margin
set foldcolumn=2

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

" don't beep
set visualbell
set noerrorbells

" set terminal's title
set title

highlight CWD ctermfg=grey ctermbg=black guibg=#504945 guifg=#000000 gui=bold
highlight File ctermfg=red ctermbg=black guibg=#504945 guifg=#cbe1b1
highlight FoldColumn ctermbg=black guibg=#706965

highlight ColorColumn ctermbg=black guibg=#706965

highlight lineNr guibg=#504945 guifg=grey
highlight CursorLineNr guibg=#222222 guifg=white gui=bold

" less obtrusive search highlighting
highlight Search ctermbg=none ctermfg=red cterm=italic,underline gui=bold,underline guibg=#555599 guifg=white

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
let g:markdown_fenced_languages = ['html', 'javascript', 'js=javascript']
