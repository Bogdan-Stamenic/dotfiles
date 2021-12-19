#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PATH="$PATH:~/.emacs.d/bin"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
## Shell promt
PS1='[\u@\h \W]\$ '
## colored man-command
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
##ignore upper and lowercase when TAB completion
#bind "set completion-ignore-case on"

## User custom commands
alias ll="ls --color=auto -hlaF"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias gs='git status'
alias ..='cd ..'
alias fstab="sudo vim /etc/fstab"
##ssh for 'kitty' terminal emulator
#alias ssh='kitty +kitten ssh'
#fix obvious typos
alias cd..='cd ..'
alias pdw='pwd'
alias sl='ls'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
#check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'
alias vi='nvim'
alias attach='tmux attach-session -t'
alias jankify='~/.bogdan/scripts/python/jankify.py' #Dumb python script
alias keycast='screenkey --timeout 1.5 --font-size small --position center --bg-color blue --opacity 0.5'

## For managing dotfiles.
## https://www.youtube.com/watch?v=tBoLDpTWVOM
## https://www.atlassian.com/git/tutorials/dotfiles
##
## Configure with the following:
## git init --bare $HOME/dotfiles
## alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' (add this alias to .bashrc)
## [user@linux]$ source .bashrc
## [user@linux]$ config config --local status.showUntrackedFiles no
##
## Basic usage example:
## 
## config add /path/to/configfile
## config commit -m "A short message"
## config push
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
