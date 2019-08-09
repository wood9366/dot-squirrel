#!/usr/bin/env bash

TARGET_DIR="~/Library/Rime/"

if [ -z $TARGET_DIR ]; then
    GIT_DIR="~/.dot-squirrel"

    if [ -z $GIT_DIR ]; then
        git clone github:wood9366/dot-squirrel $GIT_DIR
    fi

    ln -s $GID_DIR/default.custom.yaml $TARGET_DIR
    ln -s $GID_DIR/luna_pinyin_simp.custom.yaml $TARGET_DIR
else
    echo "no squirrel found"
fi
