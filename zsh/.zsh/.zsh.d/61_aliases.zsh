#!/bin/zsh

alias ls='ls --group-directories-first --color=auto'
alias mv='mv -v'
alias rm='rm -vI'
alias cp='cp -v'
alias d='colordiff -u -x .git -x CVS -x .svn -x "*~" -x ".*.swp"'
alias grep="grep --color=auto -I"
alias htopme="htop -u $USER"
alias sl="ls"
alias t="tmux"
alias l='ls -lh'
alias ll='ls -lah --color=auto'
alias dk="ranger"
alias g='git'
alias ducks='du -cks * | sort -nr | head'
alias duhcd='du -hc -d 1'

