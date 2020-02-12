#!/usr/bin/env bash

TARGET_DIR="$HOME/Library/Rime"

if [ ! -z $TARGET_DIR ]; then
    GIT_DIR="$HOME/.dot-squirrel"

    if [ -z $GIT_DIR ]; then
        git clone github:wood9366/dot-squirrel $GIT_DIR
    fi

    ln -s $GIT_DIR/default.custom.yaml $TARGET_DIR/
    ln -s $GIT_DIR/pinyin_abc.custom.yaml $TARGET_DIR/
else
    echo "no squirrel found"
fi
