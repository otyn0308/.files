#!/bin/bash

DOTPATH=~/.files

for f in .??*
do
  [ $f = ".git" ] && continue

  ln -snfvd $DOTPATH/$f $HOME/$f
done
