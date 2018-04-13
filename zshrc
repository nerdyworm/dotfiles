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
source $HOME/.trice

# Customize to your needs...
export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/heroku/bin/:/usr/local/share/npm/bin/

# No auto correct
unsetopt correct_all

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
#source $(brew --prefix nvm)/nvm.sh

export PATH=$PATH:$HOME/npm/bin

export EDITOR=vim

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# export GOROOT=$HOME/go
export GOPATH=$HOME/gocode
# export GOROOT_BOOTSTRAP=$GOROOT
export PATH=$GOPATH/bin:$PATH
export PATH=bin:$PATH
export PATH="$HOME/.yarn/bin:$PATH"

# Muse stuff
export PATH=/Applications/Muse/:$PATH
export DYLD_FALLBACK_LIBRARY_PATH="$DYLD_FALLBACK_LIBRARY_PATH:/Applications/Muse"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home

export ANDROID_HOME=/usr/local/opt/android-sdk

# added by travis gem
[ -f /Users/benjamin/.travis/travis.sh ] && source /Users/benjamin/.travis/travis.sh

# work aliases
alias ssh-staging-web='ssh -i ~/staging.pem ubuntu@54.171.93.141'
alias ssh-staging-workflows='ssh -i ~/staging.pem ubuntu@54.77.195.44'
alias ssh-4='ssh -i ~/staging.pem ubuntu@52.51.89.182'
alias ssh-staging-new-manage='ssh -i ~/staging.pem ubuntu@54.171.224.186'

#unalias gb
unalias grep

# OPAM configuration
. /Users/benjamin/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

