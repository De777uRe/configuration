#!/usr/bin/env bash

declare -a main_files=(
    ".bash_aliases"
    ".bashrc"
    ".functions"
    ".tmux.conf"
    ".vimrc"
)

for f in ${main_files[@]}; do
    echo "Creating link for: $f"
    rm -f ~/$f
    ln -s ~/configuration/$f ~/$f
done

declare -a i3_files=(
    "config"
    "status"
)

for f in ${i3_files[@]}; do
    if [[ "$f" == "config" ]]
    then
        echo "Creating configuration link for: $f"
        rm -f ~/.config/i3/$f
        ln -s ~/configuration/i3$f ~/.config/i3/$f
    else
        echo "Creating status link for: $f"
        rm -f ~/.config/i3status/config
        ln -s ~/configuration/i3$f ~/.config/i3status/config
    fi
done
