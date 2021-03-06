#XDG variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
#Default variables
		export EDITOR=nvim
		export READER="zathura"
		export TERMINAL="alacritty"
		export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
		#Change native image path
		export NATIVE_IMAGE_USER_HOME="$XDG_DATA_HOME/native-image/"
		#Change files for various history files
		export NODE_REPL_HISTORY="$XDG_DATA_HOME/node/history"
		export ICEAUTHORITY="$XDG_CACHE_HOME/ICEauthority"
		export CQL_HISTORY="$XDG_DATA_HOME/cassandra"
		export PSQL_HISTORY="$XDG_DATA_HOME/psql/history"
		export LEDGER_FILE="$XDG_DATA_HOME/hledger/2020.journal"
		export LESSHISTFILE="$XDG_DATA_HOME/less/.lesshst"
		export DSTASK_GIT_REPO="$XDG_DATA_HOME/.dstask/"
#Themes
source $XDG_CONFIG_HOME/zsh/af-magic.zsh-theme

# Don't freeze terminal on Ctrl+S
stty stop undef
		#dstask
		source $XDG_CONFIG_HOME/zsh/dstask.sh
#ZSH config
		autoload -U compinit
		zstyle ':completion:*' menu select
		zmodload zsh/complist
		compinit
		# Enable dot files completion
		_comp_options+=(globdots)	

# History
		HISTSIZE=100000
		SAVEHIST=100000
		HISTFILE=~/.local/share/zsh/history
		setopt HIST_IGNORE_ALL_DUPS
		setopt HIST_IGNORE_DUPS
		bindkey '^R' history-incremental-search-backward
		#
#Sources
		#vim
		source $XDG_CONFIG_HOME/zsh/vim_completion.sh
		#aliases
		source $XDG_CONFIG_HOME/bash/.bash_aliases
		#secret aliases
		source $XDG_CONFIG_HOME/bash/.secret_aliases.sh
		#fzf
		source $XDG_CONFIG_HOME/bash/.fzf.bash
		#autojump
		source $XDG_CONFIG_HOME/zsh/autojump.zsh
		#sdkman
		source $HOME/.sdkman/bin/sdkman-init.sh
#fix man
export MAN_DISABLE_SECCOMP=1
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# nnn
export NNN_FIFO=/tmp/nnn.fifo

# Ctrl+e edit command in editor
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Use ranger to switch directories and bind it to ctrl-o
rangercd () {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'rangercd\n'

#Node version manager
		export NVM_DIR="$XDG_CONFIG_HOME/nvm"
		[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
		[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


if [ -d "$HOME/Java/android-studio" ] ; then
  PATH="$PATH:$HOME/Java/android-studio/bin"
fi

source $HOME/.cargo/env

# auto suggestion
source $XDG_CONFIG_HOME/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Syntax highlight
source $XDG_CONFIG_HOME/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
