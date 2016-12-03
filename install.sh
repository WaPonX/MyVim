#/bin/bash

MYDIR=`dirname $0`
cd $MYDIR
cp .vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c BundleInstall -c q -c q

if [ -d ~/.vim/colors ]; then
    echo '~/.vim/colors'
else
    echo 'mkdir ~/.vim/colors'
    mkdir ~/.vim/colors
fi
cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim  ~/.vim/colors/
cp ~/.vim/bundle/molokai/colors/molokai.vim ~./vim/colors/molokai.vim
#cd ~/.vim/bundle/YouCompleteMe
#git submodule update --init --recursive
#sudo ./install.py --clang-completer
