syntax on
colorscheme slate

set number
set relativenumber
set tabstop=4
set shiftwidth=4

""" Highlight search
set hlsearch
""" Searches as you type
set incsearch
""" Case-insensitive search
set ignorecase
""" Enable case-sensitive search when uppercased letter is present
set smartcase
""" Remove search highlights with Esc
nmap <Esc> :nohlsearch<cr>

""" Jump to nomal mode by pressing jj anytime "
imap jj <Esc>

""" Activate interaction with mouse
set mouse=a

"""sync Vim clipboard with OS clipboard
set clipboard^=unnamed,unnamedplus

""" Redo with U instead of <C-r>
nmap U <C-r>

""" copy from cursor to end of line
:nnoremap Y y$

" move to the beginning of the next word
map w [w

" move to the end of the next word
map e ]w

" move to the beginning of the previous word
map b [b

" move to the end of the previous word
map ge ]b

""" jump between angle brackets
set matchpairs+=<:>


""" Leader key
let mapleader = ' '

""" Format the whole file
map <leader><leader> gg=G
