" ==============================================================================
" file       : settings.vim
" author     : daniel lee
" description: my vim settings
" ==============================================================================

" [1] custom settings ==========================================================
" enable syntax highlighting
syntax enable

" enable search highlighting
set hlsearch
set incsearch

" enable file type detection
filetype on

" enable automatic indentation
filetype indent on

" enable wildmenu
set wildmenu

" show line numbers
set number

" show invisible characters
set list
set listchars=eol:↲     " set end-of-line character

" set tab settings
set shiftwidth=4
set expandtab           " expand out a tab to spaces
set tabstop=4
set softtabstop=0

" set fold method
set foldmethod=marker

" set error formats for quickfix list
set errorformat-=%f(%l):%m                              " ncvlog
set errorformat+=%.%#\ *%t\\,%.%#(%f\\,%l\|%c):\ %m     " ncvlog
set errorformat+=%-G%.%#

" search all subdirectories recursively
set path+=**

" highlight the screen line of cursor
set cursorline

" make vim not to be compatible with vi
set nocompatible

" [2] plugin settings ==========================================================/*{{{*/
" nerdtree/*{{{*/
"let NERDTreeAutoCenter=1                            "
"let NERDTreeAutoCenterThreshold=3                   "
"let NERDTreeCaseSensitiveSort=0                     "
"let NERDTreeNaturalSort=0                           "
"let NERDTreeUseTCD=0                                "
"let NERDTreeChDirMode=0                             "
"let NERDTreeHighlightCursorline=0                   "
"let NERDTreeHijackNetrw=1                           " ok
"let NERDTreeIgnore=['\~$']                          "
"let NERDTreeRespectWildIgnore=0                     "
"let NERDTreeBookmarksFile=$HOME/.NERDTreeBookmarks  "
"let NERDTreeBookmarksSort=1                         "
"let NERDTreeMarkBookmarks=1                         "
"let NERDTreeMouseMode=1                             "
"let NERDTreeQuitOnOpen=0                            "
"let NERDTreeShowBookmarks=0                         "
"let NERDTreeShowFiles=1                             "
"let NERDTreeShowHidden=0                            "
"let NERDTreeShowLineNumbers=0                       " ok
"let NERDTreeSortOrder=['\/$', '*', '\.swp$', '\.bak$', '\~$']
"let NERDTreeStatusline=
"let NERDTreeWinPos="left"                           " ok
"let NERDTreeWinSize=31                              " ok
"let NERDTreeMinimalUI=1                             "
"let NERDTreeMinimalMenu=0                           " ok
"let NERDTreeCascadeSingleChildDir=1                 "
"let NERDTreeCascadeOpenSingleChildDir=1             "
"let NERDTreeAutoDeleteBuffer=0                      "
"let NERDTreeCreatePrefix="silent"                   "
"let NERDTreeDirArrowCollapsible=
"let NERDTreeDirArrowExpandable=
"let NERDTreeNodeDelimiter=
"let NERDTreeCustomOpenArgs=
"
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
"/*}}}*/
" solarized/*{{{*/
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
let g:solarized_hitrail=0
let g:solarized_menu=0
colorscheme solarized
"/*}}}*/
" tmux_navigator/*{{{*/
let g:tmux_navigator_save_on_switch=1           " ???
let g:tmux_navigator_disable_when_zoomed=1      " ???
let g:tmux_navigator_preserve_zoom=1            " ???
let g:tmux_navigator_no_mappings=1              " ???
"/*}}}*/
" qf/*{{{*/
let g:qf_mapping_ack_style=0
let g:qf_window_bottom=1
let g:qf_loclist_window_bottom=1
let g:qf_auto_open_quickfix=1
let g:qf_auto_open_loclist=1
let g:qf_auto_resize=1
let g:qf_max_height=10
let g:qf_auto_quit=1
let g:qf_bufname_or_text=0
let g:qf_save_win_view=1
let g:qf_nowrap=1
let g:qf_shorten_path=0
let g:qf_modifiable=1
let g:qf_join_changes=0
let g:qf_write_changes=1
"/*}}}*/
" indentline/*{{{*/
let g:indentLine_char="┊"
"let g:indentLine_char_list
"let g:indentLine_setColors
"let g:indentLine_first_char
"let g:indentLine_color_term
"let g:indentLine_bgcolor_term
"let g:indentLine_color_gui
"let g:indentLine_bgcolor_gui
"let g:indentLine_color_tty_light_
"let g:indentLine_color_tty_dark
"let g:indentLine_color_indentLevel
"let g:indentLine_showFirstIndentLevel
"let g:indentLine_enabled
"let g:indentLine_fileType
"let g:indentLine_fileTypeExclude
"let g:indentLine_bufTypeExclude
"let g:indentLine_bufNameExclude
"let g:indentLine_maxLines
"let g:indentLine_faster
"let g:indentLine_setConceal
"let g:indentLine_concealcursor
"let g:indentLine_leadingSpaceChar
"let g:indentLine_leadingSpaceEnabled
let g:indentLine_defaultGroup="specialKey"
"let g:indentLine_autoResetWidth
"/*}}}*/
" airline/*{{{*/
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter="unique_tail_improved"
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline_statusline_ontop=0
let g:airline_powerline_fonts=1
"/*}}}*/
" plugin: vim-airline-themes/*{{{*/
let g:airline_theme="solarized"
"/*}}}*/
