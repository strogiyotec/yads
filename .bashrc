# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return;;
esac

#Bash history
	export HISTFILE=$HOME/.config/bash/.bash_history
	# don't put duplicate lines or lines starting with space in the history.
	HISTCONTROL=ignoreboth
	# append to the history file, don't overwrite it
	shopt -s histappend
	# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
	HISTSIZE=-1
	HISTFILESIZE=-1

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
	debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)

#Path to aliases
source $HOME/.config/bash/.bash_aliases
#	if [ -f ~/.bash_aliases ]; then
#		. ~/.config/bash/.bash_aliases
#	fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi


shopt -s checkwinsize

#Java
JAVA_HOME=/usr/lib/jvm/java-11-oracle
export JAVA_HOME 
PATH=$PATH:$JAVA_HOME
export PATH

export PATH=/opt/firefox/firefox:$PATH


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/strogiyotec/.sdkman"
[[ -s "/home/strogiyotec/.sdkman/bin/sdkman-init.sh" ]] && source "/home/strogiyotec/.sdkman/bin/sdkman-init.sh"

#fzf finder
source $HOME/.config/bash/.fzf.bash

#bash theme
source $HOME/.config/bash/.bash_theme.sh
# fix man
export MAN_DISABLE_SECCOMP=1

#open neofetch with new terminal
neofetch 

#Default editor
export VISUAL=nvim
export EDITOR=nvim
