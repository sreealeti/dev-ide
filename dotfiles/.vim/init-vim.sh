#!/bin/bash
#clone git repositories to bundle
cd $HOME/.vim/bundle
for i in `cat $HOME/.vim/giturls|grep -v ^#`;do
  git clone $i
done
