#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\[\e[38;2;199;104;46m\]\W\[\e[0m\]] '
export PROJECT_DIR='~/Documents'
#export XDG_CONFIG_HOME='$HOME/.config'
alias cdproj="cd $PROJECT_DIR"
