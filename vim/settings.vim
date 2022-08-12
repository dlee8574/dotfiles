" ==============================================================================
" file       : settings.vim
" author     : daniel lee
" description: my vim settings
" ==============================================================================

" enable automatic indentation
filetype indent on

" enable syntax highlighting
syntax enable

" enable search highlighting
set hlsearch
set incsearch

" show line numbers
set number
set relativenumber

" show tab line
set showtabline=2

" set invisible characters
set list
set listchars=eol:↲

" set fold method
set foldmethod=marker

" set split-window position
set splitright
set splitbelow

" change tab settings
set shiftwidth=4
set expandtab                                           " expand out a tab to spaces
set tabstop=4
set softtabstop=0

" change file search settings
set nocompatible
set path+=**                                            " search all subdirectories recursively
set wildmenu

" highlight the screen line of cursor
set cursorline

" define error formats for quickfix list
set errorformat-=%f(%l):%m                              " ncvlog
set errorformat+=%.%#\ *%t\\,%.%#(%f\\,%l\|%c):\ %m     " ncvlog
set errorformat+=%-G%.%#

" plugin: nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" plugin: vim-colors-solarized
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
silent! colorscheme solarized

" plugin: vim-airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter="unique_tail_improved"
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline_statusline_ontop=0
let g:airline_powerline_fonts=1

" plugin: vim-airline-themes
let g:airline_theme="solarized"

" plugin: vim-tmux-navigator
let g:tmux_navigator_save_on_switch=1
let g:tmux_navigator_disable_when_zoomed=1

" plugin: verilog_systemverilog.vim
au BufNewFile,BufRead *.sv so ~/.vim/bundle/verilog_systemverilog.vim/syntax/verilog_systemverilog.vim

" plugin: indentline
let g:indentLine_char="┊"
let g:indentLine_defaultGroup="specialKey"
