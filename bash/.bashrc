#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=$PATH:~/bin

export GPG_TTY=$(tty)

alias ls='ls --color=auto'
PS1='\e[m[\u@\h \W]\e[93m\$\e[m '

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ls='exa'
alias l='exa -l'
alias ll='exa -al'
alias lll='exa -l | less'
alias lla='exa -la'
alias llt='exa -T'
alias llfu='exa -bghHliS --git'
alias mv='mv -i'
alias cp='cp -i'
alias vi='nvim'
