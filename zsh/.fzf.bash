# Setup fzf
# ---------
if [[ ! "$PATH" == */data/ekkaia/home_btr/wiebek/.fzf/bin* ]]; then
  export PATH="$PATH:/data/ekkaia/home_btr/wiebek/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/data/ekkaia/home_btr/wiebek/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/data/ekkaia/home_btr/wiebek/.fzf/shell/key-bindings.bash"

