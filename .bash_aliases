#!/bin/bash

source .aliases/composer;
source .aliases/docker;
source .aliases/git;
source .aliases/vagrant;

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

# Make the date command shorter.
alias today='date "+%Y-%m-%d"'
