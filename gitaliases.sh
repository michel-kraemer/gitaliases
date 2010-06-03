# aliases for common git commands
alias g='git'
alias st='git status'
alias push='git push'
alias commit='git commit'
alias log='git log'
alias stash='git stash'
alias checkout='git checkout'
alias branch='git branch'
alias fetch='git fetch'
alias merge='git merge'
alias cherry-pick='git cherry-pick'

# 'git pull --rebase' with a short log of the latest changes
pull () { local HEADHASH=`git describe --always --abbrev=40`; git pull --rebase $*; echo; PAGER='cat -B' git log --format="%C(yellow)%h %C(green)%an%C(reset): %s" $HEADHASH.. | sed -nr 's/([^:]+)\:/\1\t/;p'; }

# verbose add
add () { git add -v $*; git status; }

# verbose reset
reset () { git reset $*; git status; }

# 'git add' with 'git ls-files' and grep
# usage like grep - example: gadd 'readme.txt'
gadd () { git ls-files -co --exclude-standard | grep $* | xargs git add -v; git status; }

# 'git reset' with 'git ls-files' and grep
greset () { git ls-files | grep $* | xargs git reset; git status; }

