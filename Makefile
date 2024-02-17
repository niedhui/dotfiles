.PHONY: vscode_extensions

osx: shell gui


shell:
	stow shell

gui:
	stow gui


vim:
	ln -sf $(abspath configs/vim) ${HOME}/.config/nvim

ruby:
	ln -sf $(abspath configs/ruby/gemrc) ${HOME}/.gemrc
	ln -sf $(abspath configs/ruby/irbrc) ${HOME}/.irbrc
	ln -sf $(abspath configs/ruby/pryrc) ${HOME}/.pryrc
	ln -sf $(abspath configs/ruby/rspec) ${HOME}/.rspec

idea:
	ln -sf $(abspath configs/ideavimrc) ${HOME}/.ideavimrc


zellij:
	ln -sf $(abspath configs/zellij) ${HOME}/.config/zellij

dns:
	ln -sf $(abspath configs/dns) ${HOME}/.config/dns

ctags:
	ln -sf $(abspath configs/ctags.d) ${HOME}/.ctags.d


vscode_insiders_extensions:
	cat vscode_extensions | xargs -I {} code-insiders --install-extension  {} --force

vscode_extensions:
	cat vscode_extensions | xargs -I {} code --install-extension  {} --force

