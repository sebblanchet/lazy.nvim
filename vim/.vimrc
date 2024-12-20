"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"windows bug
set ambw=double

" don't try to be vi compatible
set nocompatible

" helps force plugins to load correctly when it is turned back on below
filetype off

" turn on syntax highlighting
syntax on

" for plugins to load correctly
filetype plugin indent on

" security, example in .c file, first line vim checks for initializations
" /* vim: set ts=8 sw=4 tw=0 noet : */
set modelines=0

set encoding=utf-8

" use global paste board
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

" disable mouse
set mouse=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" visual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show current mode
set showmode

" hybrid line numbers
set number relativenumber

set showmode

" show line numbers
set number

" show file stats
set ruler

" blink cursor on error instead of beepin
set visualbell

" color scheme and set 256 colors
set t_Co=256

" highlight current line
set cursorline

" hide eol symbols
set nolist


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set smarttab
set backspace=indent,eol,start

" whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2 ""width of TAB character \ t
set shiftwidth=2 "" indent width
set softtabstop=2 "" number of colums for \ t
set expandtab "" expand \ t to space
set noshiftround

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"
set pastetoggle=<F2>
map <leader>b :e#<CR>
map ff :FZF!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" status bar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
" from https://dustri.org/b/lightweight-and-sexy-status-bar-in-vim.html
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug '~/.fzf'
call plug#end()

if !empty(glob("~/.vim/colors/jellybeans.vim"))
  colorscheme jellybeans
  " transparent
  hi Normal guibg=NONE ctermbg=NONE
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" keymaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <D-s> :w<CR>
inoremap <D-s> <C-o>:w<CR>
vnoremap <D-s> <C-o>:w<CR>
