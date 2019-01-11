#!/bin/bash

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

# Git aliases
alias gitup="git up; gitb -vv"
alias gits="git status"
alias gitb="git branch"
alias gitbd="git branch -d"
alias gitbdf="git branch -D"
alias gitf="git fetch origin --prune"
alias gitl="git log"
alias gitco="git checkout "
alias gitcob="git checkout -b"
alias gitmx="git merge --no-ff --no-commit "
alias gitm="git merge --no-ff "
alias gitpu="git push origin "
alias gitpl="git pull origin "
alias gita="git add "
# Remove all merged branches locally.
alias gitbdm="git branch | grep -v \"master\" | xargs git branch -d"

# Composer
alias composer="php -d memory-limit=-1 /usr/local/bin/composer"
alias compor="composer require"
alias compi="composer install"

# Vagrant
alias vu="vagrant up"
alias vh="vagrant halt"
alias vd="vagrant destroy"
alias vs="vagrant ssh"
