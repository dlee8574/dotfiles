" ==============================================================================
" file       : settings.vim
" author     : daniel lee
" description: my vim settings
" ==============================================================================

" enable utf-8 file encoding
set fileencoding=utf-8

" show hidden characters
set list
set listchars=eol:↲

" show and highlight line numbers
set number
set cursorline

" enable 4-space tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" show tabline
set showtabline=2

" enable syntax highlighting
syntax enable

" set folding method
set foldmethod=marker

" highlight search keywords
set hlsearch
set incsearch

" adjust split location
set splitright
set splitbelow

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
