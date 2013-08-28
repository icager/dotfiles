## Use colors in the terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

## Git tweaks
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
source ~/.git-prompt.sh
source ~/.git-completion.bash

## Red Error code tweaks that work with a cool Git prompt
# For regular folders it looks like:
# user@host:end-of-pwd$
# For git reps it looks like:
# user@host:end-of-path (git-branch<>)$
# where the <> is either =, >, < or <> depending on if your repository or your upstream  have changes (or both - <>).
## Colours
# user@host in purple (so you can always find your prompt.
# $ in red if the last command returned an error.
# Git is coloured as-per-git.
RED='\e[0;31m'
PURPLE='\e[1;35m'
ESC='\e[0m'
export PROMPT_COMMAND='if [ $? -eq 0 ]; then __git_ps1 "\[$PURPLE\]\u@\h\[$ESC\]:\W" "\\\$ "; else __git_ps1 "\[$PURPLE\]\u@\h\[$ESC\]:\W" "\[$RED\]\\\$\[$ESC\] "; fi;'

##Path modifications
# MacPorts Installer addition on 2013-07-06_at_09:56:12: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Nice to have a local bin for odds and ends
export PATH=~/bin:$PATH

## Aliases
# la is ls with hidden files, cl is cd followed by la
alias la="ls -A"
cl () 
{
    cd $1
    ls -A
}

## Homeshick
# Homeshick is for managing dot files. use google to find out more then clone it on github.
alias homeshick="$HOME/.homesick/repos/homeshick/home/.homeshick"

homeshick --quiet refresh
