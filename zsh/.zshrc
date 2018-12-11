. $HOME/.zsh/set_common_fun.zsh

#modules to load
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'


autoload -U compinit
compinit

zmodload zsh/regex


#zsh options
setopt noautocd
setopt autolist
setopt autoparamkeys
setopt nolistbeep
setopt nobeep
setopt noglobdots
setopt nocdablevars
setopt nochaselinks

#shift tab -> reverse completion
bindkey '\e[Z' reverse-menu-complete

# number of lines kept in history
export HISTSIZE=6000
# number of lines saved in the history after logout
export SAVEHIST=6000
# location of history
export HISTFILE=$HOME/.zhistory
# append command to history file once executed
setopt inc_append_history

export PROMPT='%(!.%F{red}.)%B%n@%m:%1~ %(!.#%f.$)%b '

# fix arch linux zsh. Arch linux resets path var after .profile is read
pathmunge $MYPATH

for config_file ($HOME/.zsh.d/*.zsh) source $config_file

# Compile zcompdump, if modified, to increase startup speed.
if [ "$HOME/.zcompdump" -nt "$HOME/.zcompdump.zwc" -o ! -e "$HOME/.zcompdump.zwc" ]; then
  zcompile "$HOME/.zcompdump"
fi

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

# Keybindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[7~" beginning-of-line
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[8~" end-of-line
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

. $HOME/.zsh/unset_common_fun.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. ~/git/dev_env/z.sh


