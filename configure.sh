#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin

sudo apt-get install -y yamllint shellcheck

mkdir -p "$HOME/.tmux/plugins"
ln -s -f "$SCRIPT_DIR/tmux/tpm" "$HOME/.tmux/plugins/tpm"
ln -s -f "$SCRIPT_DIR/tmux/.tmux/.tmux.conf" "$HOME/.tmux.conf"
ln -s -f "$SCRIPT_DIR/tmux/tmux.conf.local" "$HOME/.tmux.conf.local"

curl -o go-latest.tar.gz https://go.dev/dl/go1.20.5.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go-latest.tar.gz
go install github.com/justjanne/powerline-go@lates
mkdir -p "$GOPATH/powerline-go"
ln -s -f "$SCRIPT_DIR/bash/solarized_theme.json" "$GOPATH/powerline-go/solarized_theme.json"

mkdir -p "$HOME/.vim/pack/dist/start"
ln -s -f "$SCRIPT_DIR/vim/vim-airline" "$HOME/.vim/pack/dist/start/vim-airline"
ln -s -f "$SCRIPT_DIR/vim/vim-airline-themes" "$HOME/.vim/pack/dist/start/vim-airline-themes"
ln -s -f "$SCRIPT_DIR/vim/vim-colors-solarized" "$HOME/.vim/pack/dist/start/vim-colors-solarized"
ln -s -f "$SCRIPT_DIR/vim/ale" "$HOME/.vim/pack/dist/start/ale"
ln -s -f "$SCRIPT_DIR/vim/vimrc" "$HOME/.vimrc"

ln -s -f "$SCRIPT_DIR/bash/bashrc" "$HOME/.bashrc"
