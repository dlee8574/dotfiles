#!/usr/bin/bash
# ==============================================================================
# file       : install_dotfiles.bash
# author     : daniel lee
# description: install dot files
# ==============================================================================

# [1] initialize ===============================================================#{{{
# define all dot files to be managed
dotfiles=("bash_aliases"    \
          "bash_functions"  \
          "bash_profile"    \
          "bashrc"          \
          "mappings.tmux"   \
          "settings.tmux"   \
          "tmux.conf"       \
          "mappings.vim"    \
          "settings.vim"    \
          "vimrc")

# save current working directory
cwd=$(pwd)

# name backup directory
backup_dir="dotfiles.backup"

# name backup file
backup_file="dotfiles@$(date "+%Y%b%d_%H%M%S")"
#}}}
# [2] create backup ============================================================#{{{
# make a backup directory if not exists
if [ ! -d ~/.${backup_dir} ]; then
    mkdir ~/.${backup_dir}
fi

# create backup of each existing dot file
mkdir ~/.${backup_dir}/${backup_file}
function create_dotfile_backup {
    if [ -L ~/.$1 ]; then
        cp -fL ~/.$1 ~/.${backup_dir}/${backup_file}
        unlink ~/.$1
    elif [ -f ~/.$1 ]; then
        mv ~/.$1 ~/.${backup_dir}/${backup_file}
    fi
}
for dotfile in ${dotfiles[@]}; do
    create_dotfile_backup $dotfile
done
cd ~/.${backup_dir}
tar -zcvf ${backup_file}.tar.gz ${backup_file}
rm -rf ${backup_file}
cd $cwd
#}}}
# [3] install ==================================================================#{{{
# make symlinks
for dotfile in ${dotfiles[@]}; do
    ln -s $(readlink -f $(find . -type f -name $dotfile)) ~/.$dotfile
done

# install tmux plugin manager if not exists
if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# install vim plugin manager if not exists
if [ ! -d ~/.vim/bundle ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# install all vim plugins
vim +PluginInstall +qall

# source ~/.bashrc
source ~/.bashrc

echo "info: all dot files were successfully installed!"
#}}}
