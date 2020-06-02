export ZSH="/home/strogiyotec/.oh-my-zsh"

# History
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.config/zsh/history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
bindkey '^R' history-incremental-search-backward

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="amuse"

plugins=(git)

source $ZSH/oh-my-zsh.sh
#vim
source $HOME/.config/zsh/vim_completion.sh
#sdkman
source $HOME/.sdkman/bin/sdkman-init.sh
#aliases
source $HOME/.config/bash/.bash_aliases
#fzf
source $HOME/.config/bash/.fzf.bash
#autojump
source /usr/share/autojump/autojump.sh

#fix man
export MAN_DISABLE_SECCOMP=1
export EDITOR=nvim
export READER="zathura"

#translation
export PATH=~/.config/rofi/rofi-tr/rofi-translate:$PATH

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
