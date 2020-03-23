#!/bin/sh

src=scripts
dest=~/.local/bin

[ ! -d $dest ] && mkdir -pv $dest

for file in "$src"/*
do
    if [ -f "$file" ]; then
        ln -sfv "$PWD/$file" "$dest/${file##$src/}"
    fi
done
