# alias
alias lsa='ls -aw'
alias la='ls -aw'
alias l='ls -w'
alias ll='ls -lwh'
alias lla='ls -lwah'
alias tlf="tail -f"
alias mkdir='mkdir -p'
alias -g G='| grep'
alias -g M='| less'
alias -g L='| wc -l'
alias -g ONE="| awk '{ print \$1}'"

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

set PATH $HOME/bin $PATH
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1
