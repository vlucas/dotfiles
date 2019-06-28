#!/usr/bin/env bash

[ ! -f ~/.shell.dotfiles ] && ln -s "$(pwd)/shell/.shell.dotfiles" ~/.shell.dotfiles
[ ! -f ~/.tmux.conf ] && ln -s "$(pwd)/tmux/.tmux.conf" ~/.tmux.conf
[ ! -f ~/.tmux ] && ln -s "$(pwd)/tmux" ~/.tmux
[ ! -f ~/.vimrc ] && ln -s "$(pwd)/vim/.vimrc" ~/.vimrc
[ ! -f ~/.vim ] && ln -s "$(pwd)/vim" ~/.vim


# Reference local ~/.shell.dotfiles in ~/.bashrc and/or ~/.zshrc
[ -f ~/.bashrc ] && grep "source ~/.shell.dotfiles" ~/.bashrc -q || echo "source ~/.shell.dotfiles" >> ~/.bashrc
[ -f ~/.zshrc ] && grep "source ~/.shell.dotfiles" ~/.zshrc -q || echo "source ~/.shell.dotfiles" >> ~/.zshrc
