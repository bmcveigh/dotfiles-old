#Colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#General aliases
alias la='ls -la'

#Git branch indicator for bash prompt
parse_git_branch ()
{
    c_red=`tput setaf 1`
    c_green=`tput setaf 2`
    c_sgr0=`tput sgr0`

    if git rev-parse --git-dir >/dev/null 2>&1
        then
        gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
        color=""
        if git diff --quiet 2>/dev/null >&2 
            then
            color="${c_green}"
        else
            color=${c_red}
        fi
    else
        return 0
    fi
    echo "["$color$gitver$c_sgr0"]"
}

#Bash prompt
#export PS1='\[\e[0;34m\]\u\[\e[0;0m\]@\[\e[1;0m\]\h\[\e[0;0m\]:\[\e[1;32m\]\w\[\e[0;0m\] \[${parse_git_branch)\]\$ '
export PS1='\[\e[0;34m\]\u\[\e[0;0m\]@\[\e[1;0m\]\h\[\e[0;0m\]:\[\e[1;32m\]\w\[\e[0;0m\]\$ '

#Git bash completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

#Bash Aliases
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases ];
fi

# Set Finder label color
label(){
  if [ $# -lt 2 ]; then
    echo "USAGE: label [0-7] file1 [file2] ..."
    echo "Sets the Finder label (color) for files"
    echo "Default colors:"
    echo " 0  No color"
    echo " 1  Orange"
    echo " 2  Red"
    echo " 3  Yellow"
    echo " 4  Blue"
    echo " 5  Purple"
    echo " 6  Green"
    echo " 7  Gray"
  else
    osascript - "$@" << EOF
    on run argv
        set labelIndex to (item 1 of argv as number)
        repeat with i from 2 to (count of argv)
          tell application "Finder"
              set theFile to POSIX file (item i of argv) as alias
              set label index of theFile to labelIndex
          end tell
        end repeat
    end run
EOF
  fi
}

#Adding PEAR to PATH
export PATH="/usr/local/PEAR/bin:$PATH"

export PATH="$PATH:/Applications/DevDesktop/drush"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
