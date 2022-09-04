# _               _              
#| |__   __ _ ___| |__  _ __ ___ 
#| '_ \ / _` / __| '_ \| '__/ __|
#| |_) | (_| \__ \ | | | | | (__ 
#|_.__/ \__,_|___/_| |_|_|  \___|
#

[[ $- != *i* ]] && return # if not interactive, return
shopt -s autocd # autocd like zsh

# env 
export PS1='\[\e[0;1;38;5;223m\][\[\e[0;38;5;204m\]\u\[\e[0;38;5;117m\]@\[\e[0;38;5;151m\]\h \[\e[0;2;38;5;251m\]\W\[\e[0;1;38;5;223m\]]\[\e[0;1;2;38;5;177m\]$ \[\e[0m\]'

# Alias
alias ls='ls --color=auto --group-directories-first'
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -vrf'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto -i'
alias cat='bat'
alias du='dust'
alias todo='todoist --color --indent --namespace'
alias feh='feh -FZ'
alias fehl='feh -l'
alias mpv='mpv --fs'
alias q='exit'
alias sn='sudo poweroff'
alias rb='sudo reboot'
alias cg='cd ~/.config'
alias xi='sudo xbps-install -Su'
alias xq='xbps-query -l | grep'
alias xs='xbps-query -Rs'
alias xr='sudo xbps-remove -R'


