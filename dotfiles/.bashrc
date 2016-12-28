# .bash_profile

alias ls='ls --color=auto'
alias ll='ls -lah'
alias vi='vim'

#better prompt
PS1='\[\e[01;33m\][\h \u:\[\e[01;34m\]\w\[\e[01;33m\]] '

#if [ -f ~/.local/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh ]; then
#      source ~/.local/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
#fi
# User specific environment and startup programs
if [ -d "$HOME/.local/bin" ]; then
  PATH=$PATH:$HOME/bin:$HOME/.local/bin
fi
POWERLINE_COMMAND=powerline

#export the env variables
export PATH
export POWERLINE_COMMAND
