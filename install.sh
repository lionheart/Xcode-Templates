#!/bin/bash

TEMPLATEPATH="`xcodebuild -version -sdk iphoneos9.3 Path`/../../Library/Xcode/Templates/File Templates/Source"

function link_if_exists() {
    # the -h flag checks if the file is a symbolic link
    if [ -h "$TEMPLATEPATH/$1" ] || [ -e "$TEMPLATEPATH/$1" ]; then
        echo "Skipping: $1"
    else
        ln -fsv `pwd`/"$1" "$TEMPLATEPATH"
    fi
}

for FOLDER in File\ Templates/*; do
    link_if_exists "$FOLDER"
done
