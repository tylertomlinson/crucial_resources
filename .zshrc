eval "$(rbenv init -)"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/derekborski/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias zshconfig="code ~/.zshrc"

# --------- #
# directory #
# --------- #

alias cdt="cd ~/turing"
alias cdtp="cd ~/turing/3module/projects/"
alias cdtl="cd ~/turing/3module/lessons/"
alias cdtc="cd ~/turing/3module/challenges/"
alias cdts="cd ~/turing/3module/sandbox/"
alias cdti="cd ~/turing/3module/intermission/"
alias ..="cd .."
alias cl="clear"

# --- #
# git #
# --- #
alias gcm='git commit -m'
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

alias server="bundle exec rails s"
alias rrc="bundle exec rake routes -c"
alias bi="bundle install"
alias test="bundle exec rspec"
alias be="bundle exec"
alias seed="bundle exec rake db:reset"
alias drop="bundle exec rake db:drop"
alias migrate="bundle exec rake db:migrate"
alias load ="bundle exec rake db:schema:load"

# ------ #
# heroku #
# ------ #

alias setupheroku="heroku run rake db:setup"        # migrate & seed 

# export CXX=clang++
# export GYPFLAGS=-Dmac_deployment_target=10.15

export PATH="$HOME/.rbenv/bin:$PATH"
