# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$PATH/configs/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "$PATH/configs/key-bindings.bash"
