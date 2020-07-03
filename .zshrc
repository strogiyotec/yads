#Antigen config
source $HOME/Java/antigen/antigen/antigen.zsh

		antigen use oh-my-zsh
		antigen bundle git

		antigen bundle zsh-users/zsh-syntax-highlighting
		
		antigen theme oxide

		antigen apply

#ZSH config
		autoload -U compinit
		zstyle ':completion:*' menu select
		zmodload zsh/complist
		compinit
		_comp_options+=(globdots)		# Include hidden files.

# History
		HISTSIZE=100000
		SAVEHIST=100000
		HISTFILE=~/.local/share/zsh/history
		setopt HIST_IGNORE_ALL_DUPS
		setopt HIST_IGNORE_DUPS
		bindkey '^R' history-incremental-search-backward

#Sources

		#vim
		source $HOME/.config/zsh/vim_completion.sh
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

#Default variables
		#export VIMINIT='source $MYVIMRC'
		#export MYVIMRC='~/.config/vim/.vimrc'  
		export EDITOR=nvim
		export READER="zathura"
		#Change native image path
		export NATIVE_IMAGE_USER_HOME=$HOME/.local/share/native-image/

		#Move less config to share
		export LESSHISTFILE="$HOME/.local/share/less/.lesshst"

		#Add git fuzzy
		export "PATH=$HOME/Java/git-fuzzy/git-fuzzy/bin:$PATH"

		#Node version manager
		export NVM_DIR="$HOME/.config/nvm"
		[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
		[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#XDG variables
		export XDG_CONFIG_HOME="$HOME/.config"
		export XDG_DATA_HOME="$HOME/.local/share"
