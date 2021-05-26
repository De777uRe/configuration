#!/usr/bin/env bash

declare -a files=(
    ".bash_aliases"
    ".bashrc"
    ".functions"
    ".tmux.conf"
    ".vimrc"
)

for f in ${files[@]}; do
    echo "Creating link for: $f"
    rm -f ~/$f
    ln -s ~/configuration/$f ~/$f
done
