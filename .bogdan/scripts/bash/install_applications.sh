#!/bin/bash

## Text editors
editors='atom emacs neovim vim'

## Command line application
cmd='acpilight git screenkey-git texlive-most tmux'

## GUI application
gui='atril firefox gparted keepassxc okular telegram-desktop thunar thunderbird'

sudo pacman -Syu $editors $cmd $gui

## Install paru for AUR applications
cd ~/Downloads && git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si
