fish_vi_key_bindings

if command -sq exa
  abbr -a ls 'eza'
  abbr -a l 'eza'
  abbr -a la 'eza -a'
  abbr -a ll 'eza -l'
  abbr -a lll 'eza -la'
else
  abbr -a l 'ls'
  abbr -a la 'ls -a'
	abbr -a ll 'ls -l'
	abbr -a lll 'ls -la'
end

abbr -a mkdir 'mkdir -p'
abbr -a m make
abbr -a ci code-insiders
abbr -a clear_vim_swp 'rm -rf $HOME/.local/state/nvim/swap/*'
abbr -a dfh 'df -h'

abbr -a vifish 'nvim $HOME/.config/fish/config.fish'
abbr -a cdfish 'nvim $HOME/.config/fish'
abbr -a vivi 'nvim $HOME/.config/nvim/init.lua'

# vim
abbr -a vi nvim
abbr -a vim nvim
abbr -a n nvim

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
abbr -a cc 'cargo c'
abbr -a cb 'cargo b'

abbr -a rr 'rustrover'


setenv EDITOR 'nvim'

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

fish_add_path $HOME/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path $HOME/.foundry/bin


switch (uname)
  case Darwin
    [ -f $HOME/.config/fish/osx.fish ]; and source $HOME/.config/fish/osx.fish
  case Linux
    [ -f $HOME/.config/fish/linux.fish ]; and source $HOME/.config/fish/linux.fish
end

if command -sq zoxide
  zoxide init fish | source
end

if command -sq starship
  starship init fish | source
end

if command -sq direnv
  direnv hook fish | source
end

if command -sq go
  fish_add_path (go env GOPATH)/bin
end

if set -q ZELLIJ
  abbr -a zrf 'zellij run -f --'
end

[ -f $HOME/.config/fish/local.fish ]; and source $HOME/.config/fish/local.fish

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
