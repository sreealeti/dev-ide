#!/bin/bash
#clone git repositories to bundle
cd $HOME/.vim/bundle
for i in `cat $HOME/.vim/giturls|grep -v ^#`;do
  git clone $i
done

#compile youcompleteme
cd $HOME/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3.8 install.py --tern-completer
