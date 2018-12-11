#!/bin/zsh

for config_file ($HOME/.zsh.d/*.zsh) zcompile $config_file

# Compile zcompdump, if modified, to increase startup speed.
zcompile "$HOME/.zcompdump"
zcompile $HOME/.zshrc
zcompile $HOME/.zshenv
zcompile $HOME/.zsh/set_common_fun.zsh
zcompile $HOME/.zsh/unset_common_fun.zsh

