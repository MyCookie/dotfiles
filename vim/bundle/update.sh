#! /bin/bash

# updates all git repos found in current folder

for d in ~/.vim/bundle/*/;
do
    echo ""
    echo "Updating $d"
    cd $d
    git reset --hard HEAD
    git pull
    cd ..
done
