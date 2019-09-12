#!/bin/bash
cd "$(dirname "$0")"

function syncFiles() {
    rsync --exclude-from ./.bootstrap-exclude -av . ~
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    syncFiles
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        syncFiles
    fi
fi

unset syncFiles

source ~/.bash_profile
