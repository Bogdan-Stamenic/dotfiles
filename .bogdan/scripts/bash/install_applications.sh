#!/bin/bash

## Text editors
editors='atom emacs neovim vim'

## Command line application
cmd='acpilight git python-pip python-pyperclip screenkey-git texlive-most tmux xclip'

## GUI application
gui='atril firefox gparted keepassxc okular telegram-desktop thunar thunderbird'

sudo pacman -Syu $editors $cmd $gui $libs

## Install paru for AUR applications
cd ~/Downloads && git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si
