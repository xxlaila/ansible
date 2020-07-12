# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias rz='rz -e'
alias sz='sz -e'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1='\[\e[47;30m\][{{ env }}] \[\e[0m\][\u@\h \W]\$ '
HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S "
