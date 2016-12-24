#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#bash.d
for file in ${HOME}/.bash.d/*.sh
do
  source $file
done

complete -cf sudo

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth
export EDITOR=/usr/bin/nano

BROWSER=/usr/bin/xdg-open

#xmodmap .Xmodmap
