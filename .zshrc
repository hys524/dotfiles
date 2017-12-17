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

# Vim mode
bindkey -v

# Prompt
autoload -U promptinit
promptinit
PROMPT="
${bg[red]}  ${reset_color}${bg[green]}  ${reset_color}${bg[yellow]}  ${reset_color}${bg[blue]}  ${reset_color}${bg[magenta]}  ${reset_color}${bg[cyan]}  ${reset_color}${bg[white]}  ${reset_color}${bg[black]}  ${reset_color}
${bg[red]}%n${reset_color} ${bg[red]}%m${reset_color} ${bg[red]}%D${reset_color} ${bg[red]}%*${reset_color} ${bg[red]}%d${reset_color}
%# "

# UTF-8
export LANG=ja_JP.UTF-8

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
trash-empty 14

# Key Binding
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M vicmd ' h' beginning-of-line
bindkey -M vicmd ' l' end-of-line

# VCS
setopt prompt_subst
autoload -Uz vcs_info

# Alias for Directory
setopt autonamedirs
setopt CDABLE_VARS
hash -d 0dl=~/Downloads/
hash -d 0db=~/Dropbox/
hash -d 0gb=~/GoogleDrive/
hash -d 0hdd=/media/hys524/NEWHDD2TB1/
hash -d 0oldhdd=/media/hys524/OLDHDD2TB1/

# Alias
alias ls='ls -AFx --color=auto --group-directories-first'
alias ll="ls -AFGl --color=auto --group-directories-first --block-size=\'1"
alias llh='ll -h'
alias k='cd ..'
alias kk='cd -'
alias pwd='pwd && pwd -P'
alias cp='cp -vi'
alias mv='mv -vi'
alias rm='rm -v'
alias sd='cd /media/removable/SD16GB/ && ll'
alias dl='cd ~/Downloads/ && ll'
alias db='cd ~/Dropbox/ && ll'
alias gd='cd ~/GoogleDrive/ && ll'
alias jpg='find . -not -name "*.jpg" -a -not -name "*.jpeg" -a -not -name "*.JPG" -a -not -name "*.Jpeg" -a -not -name "*.JPEG" -a -not -name "*.png" -a -not -name "*.PNG" -type f'
alias jpg2='find ./ -type d \( -name ".Trash\-1000" -o -name ".downloader" -o -name ".magazine" \) -prune -o -type f -not -name "*.jpg" -print'
alias png2='find ./ -type d \( -name ".Trash\-1000" -o -name ".downloader" -o -name ".magazine" \) -prune -o -type f -not -name "*.png" -print'
alias upgrade='sudo rm /var/lib/dpkg/lock; sudo rm /var/lib/apt/lists/lock; sudo apt update && sudo apt upgrade && sudo snap refresh'
alias tree='tree -a --dirsfirst'
alias e='exit'
alias t='trash-put -v'
alias u='unar'
alias jpddl='unar -p antijpddl'
alias z='zip -0rmv'
alias gdm='google-drive-ocamlfuse ~/GoogleDrive'
alias gdu='fusermount -u ~/GoogleDrive'
alias dbm='dropbox start && pushd ~/Dropbox && ls'
alias dbu='dropbox stop'
alias snote='pushd ~/Dropbox/Simplenote && ll && ls'
alias bashh='cat ~/Downloads/.downloader/bash_cheat_sheet.txt'
alias b2c='croutoncycle cros'
alias bookwalker='convert *.png -crop '1200x1720+0+100' -quality 95 %03d.jpg;rm *.png;ls'
alias urall='sh ~/Dropbox/Ubuntu/scripts/unrarAll.sh'
alias uzall='sh ~/Dropbox/Ubuntu/scripts/unzipAll.sh'
alias ranger='python3 ~/ranger/ranger.py'
alias rangerr='python3 ~/OSS/ranger/ranger.py'
alias dropboxStatus='~/Dropbox/Ubuntu/scripts/dropboxStatus.sh'
alias gita='git add .'
alias gitc='git commit'
alias gitf='git fetch -pv'
alias gitl='git log --graph'
alias gits='git status'
alias op='xdg-open'
alias smbm='sh ~/Dropbox/Ubuntu/scripts/mountSMB.sh'
alias smbu='sudo umount ~/Windows'
alias sftpm='sh ~/Dropbox/Ubuntu/scripts/mountSFTP.sh'
alias sftpu='fusermount -u ~/SFTP'
alias gkill='sudo gkill'
alias nethogs='sudo nethogs'
alias starti3='xiwi xinit &'

# Plugin
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-vimto/zsh-vimto.zsh

# Dropbox start
# dropbox start
DBUS_SESSION_BUS_ADDRESS="" dropbox start
