# Move this to ~/.config/fish/config.fish
alias "gs"="git status"
alias "gl"="git log"
alias "gcl"="git checkout -"
alias "gml"="git merge -"
alias "poo"="start *.sln"
alias "gsu"="git submodule update --init --recursive"
alias "gd"="git diff"
alias "gmum"="git merge upstream/master"
alias "gmud"="git merge upstream/dev"
alias "gfa"="git fetch --all"
alias "grpo"="git remote prune origin"
alias "shazaam"="gfa;gmum;gsu;git push"
alias "shazoom"="gfa;gmud;gsu;git push"

# nice light cyan color instead of dark blue
set -gx LSCOLORS gxfxcxdxbxegedabagacad

function ls --description 'List contents of directory'
  command ls -lFG $argv
end

function code --description 'Launches visual code studio in a new window'
  command code -n $argv
end

function grep --description 'Colorful grep that ignores binary file and outputs line number'
  command grep --color=always -I $argv
end

function gf --description 'Do a git fetch'
  command git fetch
end

function gdeletemergedcurrent --description 'Delete all local branches that is already merged to current branch (exludes master)'
  command git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d
  command git remote prune origin
end

. $HOME/.config/fish/prompt.fish

# Java
# set -gx JAVA_HOME (/usr/libexec/java_home)

# Allow 256 colors in iTerm2 for pretty vim colors
set -gx CLICOLOR 1
set -gx TERM xterm-256color
