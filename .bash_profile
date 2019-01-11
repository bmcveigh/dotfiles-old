# Load .bashrc file to make the CLI color-coded.
source ~/.bashrc

# Exports to $PATH variable.
export PATH=$PATH:/Applications/PhpStorm.app/Contents/MacOS
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

##############################################################################
# Working with files and directories
##############################################################################

##################################################################
# Search recursively within current directory for entered in text.
# This will search filenames and text within files.
#
# Example: powergrep something
##################################################################
function powergrep() {
  find . -type f \( -name '*' -o -name '*.*' -o -name '.*' \) -print0 | xargs -0 grep --color -n "$@"
}

##################################################################
# Search recursively within current directory for a specific file
# or directory.
#
# Example: powerfind something
##################################################################
function powerfind() {
  find . -iname "$1"
}
