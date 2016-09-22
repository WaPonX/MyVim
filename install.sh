#/bin/bash

MYDIR=`dirname $0`
cd $MYDIR
cp .vimrc ~/.vimrc
sudo yum install git gcc gcc-c++ python-devel kernel-devel cmake
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c BundleInstall -c q -c q
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/

if [ -d ~/.vim/colors ]; then
    echo '~/.vim/colors'
else
    echo 'mkdir ~/.vim/colors'
    mkdir ~/.vim/colors
fi
cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim  ~/.vim/colors/
#cd ~/.vim/bundle/YouCompleteMe
#git submodule update --init --recursive
#sudo ./install.py --clang-completer --system-libclang
