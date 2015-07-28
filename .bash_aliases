#!/bin/bash
# .alias
alias gohome='cd ~/www'
alias ..='cd ..'
# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
 
# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lF -G'
alias la='ls -alF -G'
alias ls='ls -F'
 
# Make grep more user friendly by highlighting matches
# and exclude grepping through .svn folders.
alias grep='grep -G --exclude-dir=\.svn --exclude-dir=\.git'

#mysql
alias startmysql='sudo /usr/local/mysql/support-files/mysql.server start'
