#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin

sudo apt-get install powerline yamllint shellcheck

mkdir -p "$HOME/.tmux/plugins"
ln -s -f "$SCRIPT_DIR/tmux/tpm" "$HOME/.tmux/plugins/tpm"
ln -s -f "$SCRIPT_DIR/tmux/.tmux/.tmux.conf" "$HOME/.tmux.conf"
ln -s -f "$SCRIPT_DIR/tmux/tmux.conf.local" "$HOME/.tmux.conf.local"

curl -o go-latest.tar.gz https://go.dev/dl/go1.20.5.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go-latest.tar.gz
go install github.com/justjanne/powerline-go@lates

#mkdir -p "$HOME/.config/powerline/"
#ln -s -f "$SCRIPT_DIR/powerline/powerline/config_files/colorschemes" "$HOME/.config/powerline/colorschemes"
#ln -s -f "$SCRIPT_DIR/powerline/powerline/config_files/themes" "$HOME/.config/powerline/themes"
#ln -s -f "$SCRIPT_DIR/powerline/powerline/config_files/colors.json" "$HOME/.config/powerline/colors.json"
#ln -s -f "$SCRIPT_DIR/powerline_config.json" "$HOME/.config/powerline/config.json"
#ln -s -f "$SCRIPT_DIR/powerline_shell_theme.json" "$HOME/.config/powerline/themes/shell/powerline_shell_theme.json"
#ln -s -f "$SCRIPT_DIR/powerline_shell_colorscheme.json" "$HOME/.config/powerline/colorschemes/shell/powerline_shell_colorscheme.json"

mkdir -p "$HOME/.vim/pack/dist/start"
ln -s -f "$SCRIPT_DIR/vim/vim-airline" "$HOME/.vim/pack/dist/start/vim-airline"
ln -s -f "$SCRIPT_DIR/vim/vim-airline-themes" "$HOME/.vim/pack/dist/start/vim-airline-themes"
ln -s -f "$SCRIPT_DIR/vim/vim-colors-solarized" "$HOME/.vim/pack/dist/start/vim-colors-solarized"
ln -s -f "$SCRIPT_DIR/vim/syntastic" "$HOME/.vim/pack/dist/start/syntastic"
ln -s -f "$SCRIPT_DIR/vim/vimrc" "$HOME/.vimrc"

ln -s -f "$SCRIPT_DIR/bashrc" "$HOME/.bashrc"
