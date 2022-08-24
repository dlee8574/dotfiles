# ==============================================================================
# file       : mappings.tmux
# author     : daniel lee
# description: my tmux mappings
# ==============================================================================

# [1] custom mappings =========================================================={{{
# re-define prefix key (default: ctrl + b) to ctrl + space
unbind C-space
set -g prefix C-space
bind C-space send-prefix

# re-load .tmux.conf
bind r source-file ~/.tmux.conf \; display-message ".tmux.conf has been re-loaded!"

# split a window into panes
bind | split-window -hc "{pane_current_path}" # horizontal
bind - split-window -vc "{pane_current_path}" # vertical
#}}}
