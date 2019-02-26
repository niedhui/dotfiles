abbr -a ls 'exa'
abbr -a l 'exa'
abbr -a ll 'exa -l'
abbr -a mkdir 'mkdir -p'
abbr -a m make
abbr -a ci code-insiders
abbr -a brewup 'brew update; and brew upgrade; and brew cleanup'

# vim
abbr -a vi nvim
abbr -a vim nvim
abbr -a n nvim

#Rails
abbr -a rk "rake"
abbr -a s "rspec"
abbr -a z "zeus"
abbr -a b "bundle"

# docker
abbr -a dc "docker-compose"

# git
abbr -a g git
abbr -a gah 'git stash; and git pull --rebase; and git stash pop'
abbr -a gc 'git checkout'
abbr -a gcb 'git checkout -b'
abbr -a gs 'git status'
abbr -a gpull 'git pull'
abbr -a gpush 'git push'

# cargo
abbr -a c cargo

abbr -a vifish 'nvim $HOME/.config/fish/config.fish'
abbr -a vivi 'nvim $HOME/.config/nvim/init.vim'

abbr -a tidb_console 'mysql -h 127.0.0.1 -P 4000 -u root --default-character-set=utf8'
abbr -a mysql_console 'mysql -h 127.0.0.1 -u root'

setenv EDITOR 'nvim'

setenv ANDROID_HOME $HOME/Library/Android/sdk
setenv NDK_HOME $ANDROID_HOME/ndk-bundle
setenv GOPATH $HOME/workspace/gopath
setenv SCALA_HOME /usr/local/opt/scala/idea
setenv PGDATA /usr/local/var/postgres

set PATH $HOME/bin $PATH
set PATH $PATH /usr/local/opt/go/libexec/bin
set PATH $PATH $HOME/.cargo/bin
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH $HOME/Applications/flutter/bin $PATH
set PATH $GOPATH/bin $PATH
set PATH $HOME/Applications/protoc-3.5.1-osx-x86_64/bin $PATH

if command -sq direnv
  direnv hook fish | source
end

if command -sq rbenv; and status --is-interactive
  source (rbenv init -|psub)
end

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

fish_vi_key_bindings

# launch tmux
if command -sq tmux; and status --is-interactive
	tmux ^ /dev/null; and exec true
end
