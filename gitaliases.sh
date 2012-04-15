# aliases for common git commands
alias g='git'
alias gst='git status'
alias gpush='git push'
alias gcom='git commit'
alias glog='git log'
alias gsta='git stash'
alias gche='git checkout'
alias gbra='git branch'
alias gfet='git fetch'
alias gmer='git merge'
alias gcherpi='git cherry-pick'
alias greb='git rebase'

# 'git pull --rebase' with a short log of the latest changes
pull () { local HEADHASH=`git describe --always --abbrev=40`; git pull --rebase $*; echo; PAGER='cat -B' git log --format="%C(yellow)%h %C(green)%an%C(reset): %s" $HEADHASH.. | sed -nr 's/([^:]+)\:/\1\t/;p'; }

# 'git pull --ff-only' with a short log of the latest changes
ff () { local HEADHASH=`git describe --always --abbrev=40`; git pull --ff-only $*; echo; PAGER='cat -B' git log --format="%C(yellow)%h %C(green)%an%C(reset): %s" $HEADHASH.. | sed -nr 's/([^:]+)\:/\1\t/;p'; }

# verbose add
add () { git add -v $*; git status; }

# verbose reset
reset () { git reset $*; git status; }

# 'git add' with 'git ls-files' and grep
# usage like grep - example: gadd 'readme.txt'
gadd () { git ls-files -co --exclude-standard | grep $* | xargs git add -v; git status; }

# 'git reset' with 'git ls-files' and grep
greset () { git ls-files | grep $* | xargs git reset; git status; }

# Enable auto-completion for aliased 'git' command
complete -o default -o nospace -F _git g
# Enable auto-completion for aliased 'git' command
complete -o default -o nospace -F _git g
