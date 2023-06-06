#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sudo apt-get install powerline yamllint shellcheck

mkdir -p "$HOME/.tmux/plugins"
ln -s -f "$SCRIPT_DIR/tpm" "$HOME/.tmux/plugins/tpm"
ln -s -f "$SCRIPT_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"
ln -s -f "$SCRIPT_DIR/tmux.conf.local" "$HOME/.tmux.conf.local"

mkdir -p "$HOME/.config/powerline/"
ln -s -f "$SCRIPT_DIR/powerline/powerline/config_files/colorschemes" "$HOME/.config/powerline/colorschemes"
ln -s -f "$SCRIPT_DIR/powerline/powerline/config_files/themes" "$HOME/.config/powerline/themes"
ln -s -f "$SCRIPT_DIR/powerline/powerline/config_files/colors.json" "$HOME/.config/powerline/colors.json"
ln -s -f "$SCRIPT_DIR/powerline_config.json" "$HOME/.config/powerline/config.json"

mkdir -p "$HOME/.vim/pack/dist/start"
ln -s -f "$SCRIPT_DIR/vim-airline" "$HOME/.vim/pack/dist/start/vim-airline"
ln -s -f "$SCRIPT_DIR/vim-airline-themes" "$HOME/.vim/pack/dist/start/vim-airline-themes"
ln -s -f "$SCRIPT_DIR/vim-colors-solarized" "$HOME/.vim/pack/dist/start/vim-colors-solarized"
ln -s -f "$SCRIPT_DIR/syntastic" "$HOME/.vim/pack/dist/start/syntastic"
ln -s -f "$SCRIPT_DIR/vimrc" "$HOME/.vimrc"
