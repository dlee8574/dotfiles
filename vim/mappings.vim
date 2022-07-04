" ==============================================================================
" file       : mappings.vim
" author     : daniel lee
" description: my vim mappings
" ==============================================================================

" define map leader
let mapleader=","

" exit insert mode
ino jk <esc>

" enter command mode
nno <space> <s-:>

" navigate splits
nno <c-k> <c-w><c-k>
nno <c-j> <c-w><c-j>
nno <c-h> <c-w><c-h>
nno <c-l> <c-w><c-l>

" resize splits
nno <leader>r <c-w>=

" move around buffers
nno <leader>f <s-:>bn<cr>
nno <leader>d <s-:>bp<cr>

" plugin: nerdtree
nno <leader>n <s-:>NERDTreeToggle<cr>
nno <c-f> <s-:>NERDTreeFind<cr>

" plugin: vim-tmux-navigator
nno <silent> <c-k> :TmuxNavigateUp<cr>
nno <silent> <c-j> :TmuxNavigateDown<cr>
nno <silent> <c-h> :TmuxNavigateLeft<cr>
nno <silent> <c-l> :TmuxNavigateRight<cr>
