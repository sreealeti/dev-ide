# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
if [ -d "$HOME/.local/bin" ]; then
  PATH=$PATH:$HOME/bin:$HOME/.local/bin
fi
POWERLINE_COMMAND=powerline

#export the env variables
export PATH
export POWERLINE_COMMAND
