" ==============================================================================
" file       : mappings.vim
" author     : daniel lee
" description: my vim mappings
" ==============================================================================

" re-define leader key (default: \) to comma
let mapleader=','

" re-load .vimrc
nno <leader>r <s-:>source $MYVIMRC<cr>:echo ".vimrc has been re-loaded!"<cr>

" exit insert mode
ino jk <esc>

" enter command mode
nno <space> <s-:>

" disable arrow keys in normal mode
nno <up>    <nop>
nno <down>  <nop>
nno <left>  <nop>
nno <right> <nop>

" disable arrow keys in insert mode
ino <up>    <nop>
ino <down>  <nop>
ino <left>  <nop>
ino <right> <nop>

" navigate windows
nno <c-k> <c-w>k
nno <c-j> <c-w>j
nno <c-h> <c-w>h
nno <c-l> <c-w>l

" navigate buffers
nno [b <s-:>bprevious<cr>
nno ]b <s-:>bnext<cr>
nno [B <s-:>bfirst<cr>
nno ]B <s-:>blast<cr>

" navigate quickfix list
nno [q <s-:>cprevious<cr>
nno ]q <s-:>cnext<cr>
nno [Q <s-:>cfirst<cr>
nno ]Q <s-:>clast<cr>

" toggle line numbers on and off
nno <f3> <s-:>set number!<cr>

" toggle relative line numbers on and off
nno <f4> <s-:>set relativenumber!<cr>

" plugin: nerdtree
nno <leader>n <s-:>NERDTreeToggle<cr>
nno <leader>f <s-:>NERDTreeFind<cr>

" plugin: vim-tmux-navigator
nno <silent> <c-k> :TmuxNavigateUp<cr>
nno <silent> <c-j> :TmuxNavigateDown<cr>
nno <silent> <c-h> :TmuxNavigateLeft<cr>
nno <silent> <c-l> :TmuxNavigateRight<cr>
