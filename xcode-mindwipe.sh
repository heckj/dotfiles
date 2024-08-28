#!/bin/sh
set -eou pipefail

# Omni's Xcode mindwipe script

if [ "$1" = "mini" -o "$1" = "--mini" ]; then
    echo "Performing a mini-wipe, preserving builds and other derived data"
else
    echo "Performing a full wipe, including all builds and other derived data"
    if [ -d ~/Library/Developer/Xcode/DerivedData ]; then
        mv ~/Library/Developer/Xcode/DerivedData{,.aside}
        rm -rf ~/Library/Developer/Xcode/DerivedData.aside &
    fi
fi

find . -name "$USER.xcuserdatad" -o \( -name xcuserdata -o -name "*.xccheckout" \) -print0 -prune | xargs -0 rm -rf
