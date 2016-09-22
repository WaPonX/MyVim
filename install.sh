#/bin/bash

sudo yum install git gcc gcc-c++ python-devel kernel-devel cmake
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/

if [ -d ~/.vim/colors ]; then
    echo '~/.vim/colors'
else 
    mkdir ~/.vim/colors
fi
cp ~/.vim/bundle/vim-vim-colors-solarized/colors/solarized.vim  ~/.vim/colors/

