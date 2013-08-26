## Use colors in the terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

## Git tweaks
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
source ~/.git-prompt.sh
##export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'

## Red Error code tweaks that work with Git
RED='\e[0;31m'
PURPLE='\e[1;35m'
ESC='\e[0m'
export PROMPT_COMMAND='if [ $? -eq 0 ]; then __git_ps1 "\[$PURPLE\]\u@\h\[$ESC\]:\W" "\\\$ "; else __git_ps1 "\[$PURPLE\]\u@\h\[$ESC\]:\W" "\[$RED\]\\\$\[$ESC\] "; fi;'

##
# Your previous /Users/calvin/.bash_profile file was backed up as /Users/calvin/.bash_profile.macports-saved_2013-07-06_at_09:56:12
##

##Path modifications
# MacPorts Installer addition on 2013-07-06_at_09:56:12: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=~/bin:$PATH

cl () 
{
    cd $1
    ls -A
}
alias la="ls -A"

alias homeshick="$HOME/.homesick/repos/homeshick/home/.homeshick"