# ==============================================================================
# file       : mappings.tmux
# author     : daniel lee
# description: my tmux mappings
# ==============================================================================

# change prefix (default: ctrl + b)
unbind C-space
set -g prefix C-space
bind C-space send-prefix

# remap shortcuts to split a window
bind | split-window -hc "{pane_current_path}"
bind - split-window -vc "{pane_current_path}"
