alias ll="ls -alt"
alias de="docker exec"
alias mysync="sh /Users/michaelz/Development/workspace/workspace4me/custom-settings/mysync.sh"
alias glp="git log --pretty=oneline"
alias gs='git status'
alias gd='git diff'
alias gc='git commit -m'
alias gnit='git commit --amend --no-edit'
alias ga='git add'
alias gco='git checkout'
alias gb='git branch'
alias gbcur="git status 2>&1 | head -n 1 | sed s'/On branch //g'"
alias gp='git push origin `git status 2>&1 | head -n 1 | sed s"/On branch //g"`'
alias gr='git pull origin `git status 2>&1 | head -n 1 | sed s"/On branch //g"`'
alias gf='git fetch -a'
alias gco='git checkout'
alias gcl="git branch --merged | grep -v '^*' | grep -v '^  master$' | xargs git branch -d"
alias dzbot="docker exec zenbot_server_1 zenbot"
alias vi='vim -p'

