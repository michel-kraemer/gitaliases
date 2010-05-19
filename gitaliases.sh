# short g for git
alias g='git'

# st for git status
alias st='git status'

# pull for git pull
alias pull='git pull'

# push for git push
alias push='git push'

# verbose add
add () { git add -v $*; git status; }

# verbose reset
reset () { git reset $*; git status; }

# gadd for git add with git ls-files and grep, usage is like grep - example: gadd 'cs3d'
gadd () { git ls-files -co --exclude-standard | grep $* | xargs git add -v; git status; }

greset () { git ls-files | grep $* | xargs git reset; git status; }

