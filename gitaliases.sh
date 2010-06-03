# short g for git
alias g='git'

# st for git status
alias st='git status'

# pull for git pull --rebase
pull () { local HEADHASH=`git describe --always --abbrev=40`; git pull --rebase $*; echo; PAGER='cat -B' git log --format="%C(yellow)%h %C(green)%an%C(reset): %s" $HEADHASH.. | sed -nr 's/([^:]+)\:/\1\t/;p'; }

# push for git push
alias push='git push'

# commit for git commit
alias commit='git commit'

# log for git log
alias log='git log'

# stash for git stash
alias stash='git stash'

# checkout for git checkout
alias checkout='git checkout'

# brach for git branch
alias branch='git branch'

# fetch for git fetch
alias fetch='git fetch'

# merge for git merge
alias merge='git merge'

# cherry-pick for git cherry-pick
alias cherry-pick='git cherry-pick'

# verbose add
add () { git add -v $*; git status; }

# verbose reset
reset () { git reset $*; git status; }

# gadd for git add with git ls-files and grep, usage is like grep - example: gadd 'cs3d'
gadd () { git ls-files -co --exclude-standard | grep $* | xargs git add -v; git status; }

greset () { git ls-files | grep $* | xargs git reset; git status; }

