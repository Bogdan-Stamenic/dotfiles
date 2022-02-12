#!/bin/bash
# Probably not what .profile is supposed to be, but whatever - it's my config!

# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd

export TERMINAL=/usr/bin/alacritty
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export GIT_EDITOR=nvim
export VIM_SNIPPETS_DIR=/home/bogi/.vim/bundle/vim-snippets/UltiSnips
export MAKEFLAGS="-j$(nproc)"

# LaTeX environment variables
export TEXMFDIST=/usr/share/texmf-dist
export TEXMFLOCAL=/usr/local/share/texmf:/usr/share/texmf
export TEXMFHOME=/home/bogi/texmf
#export TEXMFVAR=~/.texlive/texmf-var
#export TEXMFCONFIG=~/.texlive/texmf-config

# Customize less
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Paths to custom scripts and doom
export PATH="$PATH:~/.emacs.d/bin"
export PATH="$PATH:~/.bogdan/scripts/python"

# Deduplicate path variables, e.g. when re-sourcing
get_var () {
    eval 'printf "%s\n" "${'"$1"'}"'
}
set_var () {
    eval "$1=\"\$2\""
}
dedup_pathvar () {
    pathvar_name="$1"
    pathvar_value="$(get_var "$pathvar_name")"
    deduped_path="$(perl -e 'print join(":",grep { not $seen{$_}++ } split(/:/, $ARGV[0]))' "$pathvar_value")"
    set_var "$pathvar_name" "$deduped_path"
}
dedup_pathvar PATH

