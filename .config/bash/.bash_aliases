#DB
alias dbc='pgcli -U postgres --auto-vertical-output'
alias stag='history | grep tag'
alias gua='~/Java/gradle-4.10.3/bin/gradle uA'
#GIT
alias gitpt='git push --tags'
alias gitmd='get merge develop'
alias gitpm='git push -u origin master'
alias gitpd='git push -u origin develop'
alias gitdlb='git remote prune origin; git branch -vv | grep '"'"': gone]'"'"'|  grep -v "\*" | awk '"'"'{ print $1; }'"'"' | xargs -r git branch -D'
alias gitparent='git log --graph --decorate'
alias gits='git status .'
alias gitlc='git checkout -- .'
alias gitce='git credential-cache exit'

#MVN
alias mvncp='mvn clean package -DskipTests'
alias mvnch='mvn checkstyle:check'
#UTILS
alias ls='ls -ahN --color=auto --group-directories-first'
alias sourcez='source ~/.zshrc'
alias size='du -sh -- *'
alias zenvpn='sudo openvpn --config ~/.config/zenvpn/zenvpn.ovpn'
alias servicesa='sudo service --status-all | grep +'
alias atu='sudo apt update'
alias night='redshift -l 45:-48'
alias tl='task list'
alias tlt='task list due:today'
alias ta='jfill task rc:~/.config/taskwarrior/.taskrc add {{description}} due:{{date}} project:{{project}}'
alias count='ls | wc -l'
#Open files
alias cfal='nvim ~/.config/bash/.bash_aliases'
alias cfv='nvim ~/.config/nvim/init.vim'
alias cfa='nvim ~/.config/alacritty/alacritty.yml'
alias cfz='nvim ~/.zshrc'
alias cft='nvim ~/.tmux.conf'
alias cfi='nvim ~/.config/ideavim/ideavimrc'
#Scripts
alias img='~/.config/scripts/img.sh'
alias fzf_search='~/.config/scripts/fzf_search.sh'
alias zaread='$HOME/.config/zaread/zaread/zaread'
alias vocabulary='sc-im ~/Documents/Dictionary/words.sc'
alias green='setsid ~/.config/scripts/greenclip daemon  >/dev/null 2>&1 < /dev/null &'

#Jump to dir 
alias scr='cd ~/.config/scripts'

# Dot files
alias conf='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cpm='git --git-dir=$HOME/.cfg/ --work-tree=$HOME push -u origin master' 
alias cfs='git --git-dir=$HOME/.cfg/ --work-tree=$HOME status'
alias confa='git --git-dir=$HOME/.cfg/ --work-tree=$HOME add'

#Sdkman
alias sdkj11='sdk default java 20.0.0.r11-grl'
alias sdkj8='sdk default java 8.0.252.hs-adpt'

#Shortcuts
alias r='ranger'
alias news='newsboat'
alias task='task rc:~/.config/taskwarrior/.taskrc'
alias wget='wget --hsts-file=~/.local/share/wget/.wget-hsts'
alias v='nvim'
alias top='btm'
alias pomo='pomo -p ~/.config/pomo/.pomo'
