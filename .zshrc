# Created by newuser for 5.0.2

# Completion
autoload -U compinit
compinit
setopt auto_param_slash
setopt mark_dirs
setopt magic_equal_subst
setopt print_eight_bit
setopt globdots
setopt correct

# Colors
autoload -U colors
colors

# Prompt
autoload -U promptinit
promptinit
# .bashrc -> PS1='\[\e[47m\]________\[\e[m\] \[\e[41m\]\t\[\e[m\] \[\e[44m\]\u\[\e[m\]\n\[\e[m\]\[\e[1;35m\]\w\[\e[m\] \[\e[1;35m\]\$\[\e[m\] \[\e[0;37m\]'
# PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%# "
# ${bg[red]}%n %m${reset_color} ${bg[red]}%D %*${reset_color} ${bg[red]}%d${reset_color}
PROMPT="
${bg[red]}  ${reset_color}${bg[green]}  ${reset_color}${bg[yellow]}  ${reset_color}${bg[blue]}  ${reset_color}${bg[magenta]}  ${reset_color}${bg[cyan]}  ${reset_color}${bg[white]}  ${reset_color}${bg[black]}  ${reset_color}
${bg[red]}%n${reset_color} ${bg[red]}%m${reset_color} ${bg[red]}%D${reset_color} ${bg[red]}%*${reset_color} ${bg[red]}%d${reset_color}
%# "

# UTF-8
export LANG=ja_JP.UTF-8

# Vim mode
bindkey -v

# History
HISTFILE=${HOME}/.zsh_history
HISTSIZE=1000
SAVEHIST=10000
setopt share_history

# Big or Little
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Auto cd
setopt AUTO_CD

# Auto ls
function chpwd(){ls -pA --color=auto --group-directories-first}

# PATH
PATH="$PATH:/usr/local/sbin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/sbin"
PATH="$PATH:~/.local/share/umake/bin"
PATH="$PATH:~/Dropbox/Ubuntu/platform-tools"

# Clean up
trash-empty 3

# Dropbox start
dropbox start

# Alias for Directory
setopt CDABLE_VARS
hash -d dld=~/Downloads
hash -d sdd=/media/removable/SD16GB

# Alias
alias ls='ls -pA --color=auto --group-directories-first'
alias ll="ls -lAFG --color=auto --group-directories-first --block-size=\'1"
alias llh='ll -h'
# alias lll='sudo enter-chroot'
# alias lll='enter-chroot'
# alias llll='sudo startxfce4'
alias llll='startxfce4'
# alias k='cd ..; ls'
alias k='cd ..'
alias kk='cd -'
alias cp='cp -vi'
alias mv='mv -vi'
alias rm='rm -v'
alias sd='cd /media/removable/SD16GB/ && ll'
alias dl='cd ~/Downloads/ && ll'
alias jpg='find -not -name "*.jpg"'
alias jpg2='find ./ -type d \( -name ".Trash\-1000" -o -name ".downloader" -o -name ".magazine" \) -prune -o -type f -not -name "*.jpg" -print'
alias png='find -not -name "*.png"'
alias png2='find ./ -type d \( -name ".Trash\-1000" -o -name ".downloader" -o -name ".magazine" \) -prune -o -type f -not -name "*.png" -print'
alias apt='sudo apt-get'
alias upgrade='sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoclean && sudo apt-get check'
alias tree='tree --dirsfirst'
alias e='exit'
alias t='trash-put -v'
alias u='unar'
alias jpddl='unar -p antijpddl'
alias z='zip -0rmv'
alias gdm='google-drive-ocamlfuse ~/GoogleDrive && pushd ~/GoogleDrive && ls'
alias gdu='fusermount -u ~/GoogleDrive'
alias dbm='dropbox start && pushd ~/Dropbox && ls'
alias dbu='dropbox stop'
alias snote='pushd ~/Dropbox/Simplenote && ll && ls'
alias bashh='cat ~/Downloads/.downloader/bash_cheat_sheet.txt'
alias b2c='croutoncycle cros'
alias bookwalker='convert *.png -crop '1200x1720+0+100' -quality 95 %03d.jpg;rm *.png;ls'
alias uzall='sh /media/removable/SD16GB/.downloader/unzipAll.sh'
alias urall='sh /media/removable/SD16GB/.downloader/unrarAll.sh'
alias ranger='python ~/.ranger-1.7.2/ranger.py'
