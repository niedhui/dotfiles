fish_vi_key_bindings

abbr -a ls 'exa'
abbr -a l 'exa'
abbr -a ll 'exa -l'
abbr -a lll 'exa -la'
abbr -a mkdir 'mkdir -p'
abbr -a m make
abbr -a ci code-insiders
abbr -a clear_vim_swp 'rm -rf $HOME/.local/share/nvim/swap/*'
abbr -a dfh 'df -h'

abbr -a vifish 'nvim $HOME/.config/fish/config.fish'
abbr -a cdfish 'nvim $HOME/.config/fish'
abbr -a vivi 'nvim $HOME/.config/nvim/init.vim'

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

setenv EDITOR 'nvim'

if command -sq direnv
  direnv hook fish | source
end

switch (uname)
  case Darwin
    [ -f $HOME/.config/fish/osx.fish ]; and source $HOME/.config/fish/osx.fish
  case Linux
    [ -f $HOME/.config/fish/linux.fish ]; and source $HOME/.config/fish/linux.fish
end

[-f $HOME/.config/fish/local.fish ]; and source $HOME/.config/fish/local.fish

setenv EDITOR 'nvim'

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

prepend_path $HOME/bin
prepend_path $HOME/.cargo/bin
prepend_path $ANDROID_HOME/platform-tools

prepend_path $HOME/.tiup/bin

zoxide init fish | source

starship init fish | source

#sd tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
