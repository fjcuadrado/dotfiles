# Makefile for (un)installing dotfiles

# Current directory
PWD = `pwd`


all: gitconfig-install vim-install

clean: gitconfig-uninstall vim-uninstall


gitconfig-install:
	@ln -fs ${PWD}/git/gitconfig ~/.gitconfig

gitconfig-uninstall:
	-@rm -f ~/.gitconfig

ssh-install:
	@ln -fs ${PWD}/ssh/config ~/.ssh/config

ssh-uninstall:
	-@rm -f ~/.ssh/config

vim-plugins:
	@git submodule init
	@git submodule update --remote --merge

vim-install: vim-plugins
	@ln -fns ${PWD}/vim ~/.vim
	@ln -fs ${PWD}/vim/vimrc ~/.vimrc

vim-uninstall:
	-@rm -f ~/.vim
	-@rm -f ~/.vimrc

.PHONY: all clean
