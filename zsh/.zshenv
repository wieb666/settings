. $HOME/.zsh/set_common_fun.zsh


LANG=en_US.utf8
LC_ALL=en_US.utf8
LC_TIME=en_GB
LC_COLLATE=en_US.utf8

export LANG LC_COLLATE LC_TIME LC_ALL

pathmunge "$HOME/bin"
pathmunge "/usr/local/bin" after
pathmunge "$HOME/.molecules" after
pathmunge "$HOME/.local/bin" after

LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.perl=01;33:*.zsh=01;33:*.sh=01;33:*.pl=01;33:*.r=01;33:*.R=01;33:*.py=01;33:'
export LS_COLORS

MYEDITOR=nano
GIT_EDITOR=$MYEDITOR
VISUAL=$MYEDITOR
EDITOR=$MYEDITOR
LESS=-iSR
PAGER=less

export MYEDITOR GIT_EDITOR  VISUAL EDITOR LESS PAGER

if [[ -f ~/.myprofile ]]; then
    source ~/.myprofile
fi

MYPATH=$PATH
export PATH MYPATH

. $HOME/.zsh/unset_common_fun.zsh
[[ -r ~/.profile && -z "$EZ_REX_PROFILE_LOADED" ]] && . ~/.profile

