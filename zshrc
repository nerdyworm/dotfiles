# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="sorin"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bunlder)


source $ZSH/oh-my-zsh.sh
source $HOME/.env

# Customize to your needs...
export PATH=~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/heroku/bin/:/usr/local/share/npm/bin/

# No auto correct
unsetopt correct_all

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
source $(brew --prefix nvm)/nvm.sh

export EDITOR=vim

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export GOROOT=~/go
export GOPATH=~/gopath
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH
export PATH=bin:$PATH
#export PATH=node_modules/.bin:$PATH

export TORQUEBOX_HOME=/Users/benjamin/code/torquebox/torquebox-3.0.0
export JBOSS_HOME=$TORQUEBOX_HOME/jboss
export JRUBY_HOME=$TORQUEBOX_HOME/jruby
export PATH=$PATH:$JRUBY_HOME/bin

export ANDROID_HOME=/usr/local/opt/android-sdk
