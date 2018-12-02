alias ll="ls -alt"
alias de="docker exec"
+  # settings sync
+  alias mysync="sh /Users/michaelz/Development/workspace/workspace4me/custom-settings/mysync.sh"
+  # git aliases
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
+  alias gcl="git branch --merged | grep -v '^*' | grep -v '^  master$' | xargs git branch -d"
   #for zenbot
alias dzbot="docker exec zenbot_server_1 zenbot"
   #vim
alias vi='vim -p'
   # navigation
up() {
     local _levels=$1
     if [ ! -z "$_levels" ] && [ $_levels -gt 0 ] && [ $_levels -lt 1000 ]
     then
          local _cmd=".."
          for (( i=1 ; i<$_levels ; i++ ))
          do
               _cmd="$_cmd/.."
          done
          cd $_cmd
     fi
}