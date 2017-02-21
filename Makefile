# Makefile for (un)installing dotfiles

# Current directory
PWD = `pwd`


all: vim-install

clean: vim-uninstall

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
