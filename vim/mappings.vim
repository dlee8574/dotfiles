" ==============================================================================
" file       : mappings.vim
" author     : daniel lee
" description: my vim mappings
" ==============================================================================

" define my map leader key
let mapleader=","

" exit insert mode
ino jk <esc>

" enter command mode
nno <space> <s-:>

" disable arrow keys in normal mode
nno <up> <nop>
nno <down> <nop>
nno <left> <nop>
nno <right> <nop>

" disable arrow keys in insert mode
ino <up> <nop>
ino <down> <nop>
ino <left> <nop>
ino <right> <nop>

" navigate windows
nno <c-k> <c-w>k
nno <c-j> <c-w>j
nno <c-h> <c-w>h
nno <c-l> <c-w>l

" plugin: nerdtree
nno <leader>n <s-:>NERDTreeToggle<cr>
nno <leader>f <s-:>NERDTreeFind<cr>

" plugin: vim-tmux-navigator
nno <silent> <c-k> :TmuxNavigateUp<cr>
nno <silent> <c-j> :TmuxNavigateDown<cr>
nno <silent> <c-h> :TmuxNavigateLeft<cr>
nno <silent> <c-l> :TmuxNavigateRight<cr>
