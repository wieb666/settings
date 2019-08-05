#!/bin/bash
#[ x$ZSH_VERSION = x -a -f $HOME/usr/bin/zsh ] && exec $HOME/usr/bin/zsh -l
if [ x$ZSH_VERSION = x -a -f /bin/zsh ]; then
    exec /bin/zsh -l
else
    source ~/.zsh/.profile
fi
