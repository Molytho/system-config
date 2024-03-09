#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth
export HISTSIZE=1000
shopt -s checkwinsize

case "$TERM" in
    xterm-color|*-256color|alacritty) PS1='\[\e]0;\u@\h:\w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ ';;
    linux) PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ ';;
    *) PS1='\u@\h:\w\$ ';;
esac

# enable color support
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.config/.dircolors && "$(dircolors -b ~/.config/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias diff='diff --color=auto'
  alias ip='ip --color=auto'
  alias grep='grep --color=auto'
  export LESS='-R'
fi

# pull in aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# set default editor
export SUDO_EDITOR=/usr/bin/rnano
export VISUAL=/usr/bin/nano
export EDITOR=/usr/bin/nano

# setup gpg-agent
GPG_TTY=$(tty)
export GPG_TTY

# setup fzf
export FZF_CTRL_T_OPTS="--bind ctrl-l:down,ctrl-j:clear-screen"
export FZF_COMPLETION_OPTS="--bind ctrl-l:down,ctrl-j:clear-screen"
source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash

# pull in xdg-dirs for use
. "$HOME/.config/user-dirs.dirs"

# Grim folder
export GRIM_DEFAULT_DIR="$XDG_PICTURES_DIR/Screenshots"
