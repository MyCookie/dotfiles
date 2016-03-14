#! /bin/bash

# updates all git repos found in current folder

echo "updating vim-pathogen"
cd ~/.vim/vim-pathogen
git reset --hard HEAD
git pull
cp ./autoload/pathogen.vim ../autoload
cd ..

for d in ~/.vim/bundle/*/;
do
    echo ""
    echo "Updating $d"
    cd $d
    git reset --hard HEAD
    git pull
    cd ..
done
