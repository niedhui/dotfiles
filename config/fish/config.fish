# alias
alias lsa='ls -aw'
alias la='ls -aw'
alias l='ls -w'
alias ll='ls -lwh'
alias lla='ls -lwah'
alias tlf="tail -f"
alias mkdir='mkdir -p'

# vim
alias vi=vim
alias m=mvim
alias m.='m .'

# Bundler
alias b="bundle"

# Rubygems
alias gi="gem install"
alias giv="gem install -v"

#Rails
alias rk="rake"
alias s="rspec"
alias z="zeus"

set -x YACF_PROJECT_PATH '/Users/niedhui/workspace/yacf/crowdfund2'
set PATH $HOME/bin $PATH
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/bin $PATH
set PATH /Library/Caches/Homebrew/node_modules/coffee-script/bin $PATH
set PATH /usr/local/lib/node_modules/js-beautify/js/bin $PATH
. (rbenv init -|psub)
eval (direnv hook fish)
set -x EDITOR 'mvim'

