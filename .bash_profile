# Load .bashrc file to make the CLI color-coded.
source ~/.bashrc

# Exports to $PATH variable.
export PATH=$PATH:/Applications/PhpStorm.app/Contents/MacOS
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Git aliases
alias gitup="git up; gitb -vv"
alias gits="git status"
alias gitb="git branch"
alias gitf="git fetch origin --prune"
alias gitl="git log"
alias gitco="git checkout "
alias gitmx="git merge --no-ff --no-commit "
alias gitm="git merge --no-ff "
alias gitpu="git push origin "
alias gita="git add "
