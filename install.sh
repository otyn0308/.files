#!/bin/sh

DOTPATH=~/.files

for f in .??*
do
  [ $f = ".git" ] && continue

  ln -snfvd $DOTPATH/$f $HOME
done
