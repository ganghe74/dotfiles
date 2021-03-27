#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=$PATH:~/bin

export EDITOR=nvim
export VISUAL=nvim
export GPG_TTY=$(tty)

alias ls='ls --color=auto'
PS1='\e[m[\u@\h \W]\e[93m\$\e[m '

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias c='clear'
alias e="$EDITOR"
alias ls='lsd'
alias l='lsd -l'
alias ll='lsd -Al'
alias mv='mv -i'
alias cp='cp -i'
alias vi='nvim'
alias tmux='tmux -2'
