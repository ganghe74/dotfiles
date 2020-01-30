#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias vi='nvim'
alias ll='ls -lhF'
alias l='ls -AlhF'
alias mv='mv -i'
alias cp='cp -i'
