#!/bin/bash -x

WORK_DIR=`pwd`
VIM_THEME_DIR=`find /usr/share/vim/ | grep -E "vim[[:digit:]]{2}\/colors$"`

cp $WORK_DIR/new_conf/.vimrc ~/.vimrc
cp $WORK_DIR/new_conf/gruvbox.vim $VIM_THEME_DIR
