# --------- #
# directory #
# --------- #

alias cdt="cd ~/Turing"
alias cdtp="cd ~/Turing/2module/projects/"
alias cdtl="cd ~/Turing/2module/lessons/"
alias cdtc="cd ~/Turing/2module/challenges/"
alias cdts="cd ~/Turing/2module/sandbox/"
alias ..="cd .."
alias cl="clear"

# --- #
# git #
# --- #

alias gd="git diff"
alias gs="git status"
alias ga="git add"
alias gc="git checkout"
alias pm="git pull origin master"
alias com="git checkout master"
alias grv="git remote -v"                        # show remotes
alias gbr="git browse"                           # open repo on github
alias gcb="git checkout -b"                      # create and checkout to new branch
alias glp="git log --pretty=oneline"             # oneline logs
alias gl="git log --all --graph --decorate"      # detailed log

# removes local branches that have been merged into master
alias gclean="git branch --merged master | ag -v '\* master' | xargs -n 1 git branch -d"

cobm() {
  git checkout master && git pull && git checkout -b "$1"
}

# commits... example: gcm This is a commit 
function gcm() {
  args=$@
  git commit -m "$args"
}

# ----- #
# rails #
# ----- #

alias bi= "bundle install"
alias test= "bundle exec rspec"
alias be= "bundle exec"
alias seed= "bundle exec rake db:reset"
alias drop= "bundle exec rake db:drop"
alias migrate= "bundle exec rake db:migrate"
alias load = "bundle exec rake db:schema:load"
alias server= "bundle exec rails s"

# ------ #
# heroku #
# ------ #

alias setupheroku= "heroku run rake db:setup"        # migrate & seed 








eval "$(rbenv init -)"