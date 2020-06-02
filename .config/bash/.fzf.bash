# Setup fzf
# ---------
if [[ ! "$PATH" == */home/strogiyotec/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/strogiyotec/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/strogiyotec/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/strogiyotec/.fzf/shell/key-bindings.zsh"
