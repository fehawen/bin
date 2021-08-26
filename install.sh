#!/bin/sh

#
# install.sh
#

i() {
    mkdir -p "$prefix/$dest"

    for file in "$src"/*; do
        cp -v "$file" "$prefix/$dest/"
    done
}

u() {
    [ -d "$prefix/$dest" ] || exit 1

    for file in "$src"/*; do
        rm -v "$prefix/$dest/${file##*/}"
    done
}

d() {
    [ -d "$prefix/$dest" ] || exit 1

    for file in "$src"/*; do
        printf '\033[1;37mDiff:\033[m %s\n' "${file##*/}"
        diff "$file" "$prefix/$dest/${file##*/}" && {
            printf 'No difference.\n'
        }

        printf '\n'
    done
}

main() {
    prefix=$HOME
    src=scripts
    dest=bin

    case $1 in
        install) i ;;
        uninstall) u ;;
        diff) d ;;
    esac
}

main "$@"
