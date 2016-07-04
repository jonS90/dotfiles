#!/bin/bash
cd "$(dirname "$0")"

mkdir -p ~/.vim
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim

# Install Vim-Plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install solarized colorscheme

curl --create-dirs https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -o ~/.vim/colors/solarized.vim
curl --create-dirs https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -o ~/.config/nvim/colors/solarized.vim

# Install Powerline fonts

git submodule init
git submodule update
powerline-fonts/install.sh

# Tern Plugin Setup
echo ""
echo "To install Plug pluggins"
echo "    :PlugInstall (inside vim)"
echo ""
echo "To install Vundle pluggins"
echo "    :PluginInstall (inside vim)"
echo ""
echo "To finalize tern_for_vim plugin (this might be unnecessary)"
echo "    cd ~/.vim/**/tern_for_vim;"
echo "    npm install"