#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd

export TERMINAL=/usr/bin/kitty
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

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
