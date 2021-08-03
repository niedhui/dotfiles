install_alacritty:
	sudo add-apt-repository ppa:system76/pop
	sudo apt update
	sudo apt install alacritty

install_apts:
	sudo apt update
	sudo apt install git neovim curl build-essential tmux exa ripgrep fzf

fish:
	-@rm -rf ${HOME}/.config/fish
	ln -sf $(abspath configs/fish) ${HOME}/.config/fish

vim:
	-git clone https://github.com/k-takata/minpac.git  ${HOME}/.config/nvim/pack/minpac/opt/minpac
	ln -sf $(abspath configs/vim/init.vim) ${HOME}/.config/nvim/init.vim
	ln -sf $(abspath configs/vim/minpac.vim) ${HOME}/.config/nvim/minpac.vim

git:
	ln -sf $(abspath configs/git/gitconfig) ${HOME}/.gitconfig
	ln -sf $(abspath configs/git/gitignore_global) ${HOME}/.gitignore_global

tmux:
	ln -sf $(abspath configs/tmux.conf) ${HOME}/.tmux.conf

ruby:
	ln -sf $(abspath configs/ruby/gemrc) ${HOME}/.gemrc
	ln -sf $(abspath configs/ruby/irbrc) ${HOME}/.irbrc
	ln -sf $(abspath configs/ruby/pryrc) ${HOME}/.pryrc
	ln -sf $(abspath configs/ruby/rspec) ${HOME}/.rspec

idea:
	ln -sf $(abspath configs/ideavimrc) ${HOME}/.ideavimrc

alacritty:
	ln -sf $(abspath configs/alacritty/alacritty.yml) ${HOME}/.config/alacritty/alacritty.yml

alacritty_gpd:
	ln -sf $(abspath configs/alacritty/alacritty_gpd.yml) ${HOME}/.config/alacritty/alacritty.yml

karabiner:
	ln -sf $(abspath configs/karabiner.json) ${HOME}/.config/karabiner/karabiner.json

ctags:
	ln -sf $(abspath configs/ctags.d) ${HOME}/.ctags.d

asdf_ruby:
	-asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
	asdf install ruby 2.6.3
	asdf global ruby 2.6.3

npm:
	npm i -g typescript ts-node typescript-language-server truffle

bootstrap_common: fish vim git tmux ruby idea

bootstrap_osx: bootstrap_common karabiner alacritty

bootstrap_ubuntu: install_alacritty install_apts bootstrap_common
