#!/bin/bash -x

function usage()
{
    echo "Usage: $0 <vim|nvim>"
    exit 0
}

if [ $# -ge 1 ]
then
    while [ $# -ne 0 ]
    do
        if [ "$1" == "vim" ]
        then
            TARGET=vim
            break
        elif [ "$1" == "nvim" ]
        then
            TARGET=nvim
            break
        else
            shift
        fi
    done
    if [ -z "$TARGET" ]
    then
        usage
    fi
else
    usage
fi

WORK_DIR=`pwd`

mkdir $HOME/.vim
\cp -raf $WORK_DIR/vim/* $HOME/.vim
if [ "$TARGET" == "nvim" ]
then
    mkdir -p $HOME/.config/nvim
    ln -s $HOME/.vim/vimrc $HOME/.config/nvim/init.vim
    ln -s $HOME/.vim/syntax $HOME/.config/nvim/syntax
fi
