# alias
alias l='exa'
alias ll='exa -l'
alias mkdir='mkdir -p'

# vim
alias vi=nvim
alias vim=nvim
alias n=nvim

#Rails
alias rk="rake"
alias s="rspec"
alias z="zeus"

# docker
alias dc="docker-compose"


set -x ANDROID_HOME /Users/niedhui/Library/Android/sdk
set -x NDK_HOME $ANDROID_HOME/ndk-bundle
set -x GOPATH /Users/niedhui/workspace/gopath
set -x EDITOR 'vim'
set -x SCALA_HOME /usr/local/opt/scala/idea
set -x PGDATA /usr/local/var/postgres

set PATH $HOME/bin $PATH
set PATH /usr/local/sbin $PATH
set PATH $PATH /usr/local/opt/go/libexec/bin
set PATH $PATH $HOME/.cargo/bin
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH /Users/niedhui/Applications/flutter/bin $PATH

direnv hook fish | source

status --is-interactive; and source (rbenv init -|psub)

set -x LANG C
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

fortune |cowsay
