#DB
alias dbc='pgcli -U postgres --auto-vertical-output'
alias stag='history | grep tag'
alias gua='$HOME/Cuba/gradle-4.10.3/bin/gradle uA'
#GIT
alias gitpt='git push --tags'
alias gitmd='get merge develop'
alias gitpm='git push -u origin master'
alias gitdlb='git remote prune origin; git branch -vv | grep '"'"': gone]'"'"'|  grep -v "\*" | awk '"'"'{ print $1; }'"'"' | xargs -r git branch -D'
alias gitparent='git log --graph --decorate'
alias gits='git status .'
alias gitlc='git checkout -- .'
alias gitce='git credential-cache exit'

#MVN
alias mvncp='mvn clean package -DskipTests'
alias mvnch='mvn checkstyle:check'
#UTILS
alias v='nvim'
alias ls='ls -ahN --color=auto --group-directories-first'
alias sourcez='source ~/.zshrc'
alias size='du -sh -- *'
alias zenvpn='sudo openvpn --config $HOME/Downloads/zenvpn.ovpn'
alias servicesa='sudo service --status-all | grep +'
alias atu='sudo apt update'
alias night='redshift -l 45:-48'
alias top='ytop -c monokai'
#Open files
alias cfal='nvim ~/.config/bash/.bash_aliases'
alias cfv='nvim ~/.config/nvim/init.vim'
alias cfa='nvim ~/.config/alacritty/alacritty.yml'
alias cfz='nvim ~/.zshrc'
alias cft='nvim ~/.tmux.conf'
alias ohmyzsh="nvim ~/.oh-my-zsh"
#Scripts
alias img='~/.config/scripts/img.sh'
alias fzf_search='~/.config/scripts/fzf_search.sh'
alias zaread='$HOME/.config/zaread/zaread/zaread'
alias vocabulary='sc-im ~/Documents/Dictionary/words.sc'
alias r='ranger'
alias green='setsid ~/.config/scripts/greenclip daemon  >/dev/null 2>&1 < /dev/null &'

#Jump to dir 
alias scr='cd ~/.config/scripts'

# Dot files
alias conf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cpm='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME push -u origin master' 
alias confs='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME status'
alias confa='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME add'
