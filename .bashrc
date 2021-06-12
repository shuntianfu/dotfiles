#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '






if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi


export POWERLINE_CMMAND=powerline

powerline-daemon -q

POWERLINE_BASH_CONTINUATION=1

POWERLINE_BASH_SELECT=1

. /usr/share/powerline/bindings/bash/powerline.sh

# Python path

#export PYTHONPATH=$PYTHONPATH:"/home/zhang/python_module/"
#export PATH=$PATH:"/home/zhang/python_module/"
export PYTHONPATH="/home/zhang/python_module/"

export NOTES_DIR="/home/zhang/Documents/notes"

export EDITOR="vim"

# command can't be used like this
#export potion="/home/zhang/learn/potion/bin/potion"

#use vim on command line

set -o vi

# add tab completion to cht.sh

. ~/.bash.d/cht.sh

# grep color

# 0 关闭所有属性， 1 设置高亮度，4 下划线，5 闪烁，7 反显，8 消隐
export GREP_COLOR="1;32"


# alias

alias c="clear"

alias pb="cd ~/learn_python/basic"
alias pc="cd ~/learn_python/corey"
alias pcj="cd ~/learn_python/corey/jupyter"
alias ppt="cd ~/learn_python/powerpoint/"
alias grep="grep --color=auto"



alias config='/usr/bin/git --git-dir=/home/zhang/dotfiles/ --work-tree=/home/zhang'
