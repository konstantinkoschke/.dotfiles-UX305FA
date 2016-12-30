#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#bash.d
for file in ${HOME}/.bash.d/*.sh
do
  source $file
done

complete -cf sudo

export EDITOR=/usr/bin/vim

BROWSER=/usr/bin/xdg-open

xmodmap ~/.Xmodmap
