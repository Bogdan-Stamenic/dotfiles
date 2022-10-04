#!/bin/bash

## Text editors
editors='atom emacs neovim vim'

## Command line application
cmd='acpilight git python-pip python-pyperclip screenkey-git texlive-most tmux xclip'

## GUI application
gui='atril element-desktop firefox gparted keepassxc okular signal-desktop telegram-desktop thunar thunderbird'

## Other
etc='perl-json-xs perl-anyevent-i3'

sudo pacman -Syu $editors $cmd $gui $etc

## Install paru for AUR applications
cd ~/Downloads && git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si
