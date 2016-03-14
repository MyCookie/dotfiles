#!/bin/bash
# simple script to grab vim plugins and install them

echo "cloning vim-pathogen"
https://github.com/tpope/vim-pathogen
echo "creating folder autoload"
mkdir autoload
echo "moving pathogen to autoload"
cp ./vim-pathogen/autoload/pathogen.vim ./autoload

echo "creating folder bundle for plugins"
mkdir bundle
echo "moving into bundle"
cd bundle

echo "cloning vim plugins"
echo ""
echo "cloning vim-fugitive"
git clone https://github.com/tpope/vim-fugitive
echo "cloning nerdtree"
git clone https://github.com/scrooloose/nerdtree
echo "cloning syntastic"
git clone https://github.com/scrooloose/syntastic
echo "cloning vim-airline"
git clone https://github.com/vim-airline/vim-airline
echo "cloning vim-airline-themes"
git clone https://github.com/vim-airline/vim-airline-themes
echo "cloning vim-gitgutter"
git clone https://github.com/airblade/vim-gitgutter
echo "cloning neocomplete"
git clone https://github.com/shougo/neocomplete.vim
echo "cloning vim-colors-solarized"
git clone https://github.com/altercation/vim-colors-solarized
echo "cloning vim-surround"
git clone https://github.com/tpope/vim-surround

echo "leaving bundle"
cd ..

echo "done cloning"
