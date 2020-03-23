#!/bin/sh

src=scripts
dest=~/.local/bin

[ ! -d $dest ] && mkdir -pv $dest

for file in "$src"/*
do
    [ -f "$file" ] && ln -sfv "$PWD/$file" "$dest/${file##$src/}"
done
