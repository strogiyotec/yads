export ZSH="$HOME/.oh-my-zsh"

# History
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.local/share/zsh/history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
bindkey '^R' history-incremental-search-backward

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

plugins=(git)

source $ZSH/oh-my-zsh.sh
#vim
source $HOME/.config/zsh/vim_completion.sh
#taskwarrior
source $HOME/.config/zsh/task_warrior.sh
#sdkman
source $HOME/.sdkman/bin/sdkman-init.sh
#aliases
source $HOME/.config/bash/.bash_aliases
#secret aliases
source $HOME/.config/bash/.secret_aliases.sh
#fzf
source $HOME/.config/bash/.fzf.bash
#autojump
source $HOME/.config/zsh/autojump.zsh

#fix man
export MAN_DISABLE_SECCOMP=1

#Defaults
export EDITOR=nvim
export READER="zathura"

#Clean up home directory
#Move less config to share
export LESSHISTFILE="$HOME/.local/share/less/.lesshst"
export XDG_CONFIG_HOME="$HOME/.config"
#open tmux by default
#case $- in *i*)
#    [ -z "$TMUX" ] && exec tmux
#esac

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


