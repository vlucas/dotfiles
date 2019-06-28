#!/usr/bin/env bash

[[ -e ~/.dotfiles ]] || git clone https://github.com/vlucas/dotfiles ~/.dotfiles
pushd ~/.dotfiles > /dev/null

cd ~/.dotfiles

DOTFILES="$(pwd)/dotfiles"

echo "Installing dotfiles at: $DOTFILES..."

[ ! -f ~/.shell.dotfiles ] && ln -s "$DOTFILES/.shell.dotfiles" ~/.shell.dotfiles
[ ! -f ~/.tmux.conf ] && ln -s "$DOTFILES/.tmux.conf" ~/.tmux.conf
[ ! -f ~/.tmux ] && ln -s "$DOTFILES/tmux" ~/.tmux
[ ! -f ~/.vimrc ] && ln -s "$DOTFILES/.vimrc" ~/.vimrc
[ ! -f ~/.vim ] && ln -s "$DOTFILES/vim" ~/.vim


# Reference local ~/.shell.dotfiles in ~/.bashrc and/or ~/.zshrc
[ -f ~/.bashrc ] && grep "source ~/.shell.dotfiles" ~/.bashrc -q || echo "source ~/.shell.dotfiles" >> ~/.bashrc
[ -f ~/.zshrc ] && grep "source ~/.shell.dotfiles" ~/.zshrc -q || echo "source ~/.shell.dotfiles" >> ~/.zshrc


# Install vim plugins
vim -c ':silent !echo' -c ':PlugInstall' -c ':qa!'

popd > /dev/null

echo "-----> All done. Enjoy your shell!"
