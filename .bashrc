#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set the default editor
export VISUAL="vim"

# Enable more than 8 colors in vim
export TERM=xterm-256color

alias ls='ls --color=auto'

# Colors in man


PS1='[\u@\h \W]\$ '
