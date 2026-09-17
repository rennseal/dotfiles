#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export TERM=xterm-256color
export PATH=$PATH:~/scripts
export MOZ_ENABLE_WAYLAND=1
export MOZ_DISABLE_RDD_SANDBOX=1
export LIBVA_DRIVER_NAME=nvidia
export NVD_BACKEND=direct
#export https_proxy=127.0.0.1:2080
#export http_proxy=127.0.0.1:2080
export EDITOR="vim"
export VISUAL="vim"

ru() {
  if [ "$#" -gt 0 ]; then
	trans :ru "$@" | head -n 20
  else
	trans :ru
  fi
}
en() {
  if [ "$#" -gt 0 ]; then
	trans "$@" | head -n 20
  else
	trans
  fi
}
fr() {
  if [ "$#" -gt 0 ]; then
        trans "$@" | head -n 20
  else
        trans :fr
  fi
}
#alias ru='trans :ru "$@" | head -n 20'
#alias en='trans "$@" | head -n 20'
alias hyprland='start-hyprland'

stty werase \^H

source '/home/kiwichan/.bash_completions/comfy.sh'

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/kiwichan/.lmstudio/bin"
# End of LM Studio CLI section


. "$HOME/.local/bin/env"
