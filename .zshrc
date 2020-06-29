source ~/.config/antigen/antigen.zsh
		antigen use oh-my-zsh
		antigen bundle git
		antigen theme avit
		antigen apply

# History
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.local/share/zsh/history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
bindkey '^R' history-incremental-search-backward

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

export "PATH=$HOME/Java/git-fuzzy/git-fuzzy/bin:$PATH"

#Node version manager
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


