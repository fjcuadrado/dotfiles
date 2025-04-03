# Makefile for managing dotfiles

TARGET_DIR ?= $(HOME)

all: bash git ssh vim

.bash_logout: bash/bash_logout
	@ln -fs $(CURDIR)/$^ $(TARGET_DIR)/$@

.bashrc: bash/bashrc
	@ln -fs $(CURDIR)/$^ $(TARGET_DIR)/$@

.config/bash_completion: bash/bash_completion
	@ln -fs $(CURDIR)/$^ $(TARGET_DIR)/$@

.config/vim: vim/vimrc
	@ln -fns $(shell dirname $(CURDIR)/$^) $(TARGET_DIR)/$@

.gitconfig: git/gitconfig
	@ln -fs $(CURDIR)/$^ $(TARGET_DIR)/$@

.inputrc: shell/inputrc
	@ln -fs $(CURDIR)/$^ $(TARGET_DIR)/$@

.profile: shell/profile
	@ln -fs $(CURDIR)/$^ $(TARGET_DIR)/$@

.ssh/config: ssh/config
	@ln -fs $(CURDIR)/$^ $(TARGET_DIR)/$@

bash: .bash_logout .bashrc .inputrc .profile .config/bash_completion

git: .gitconfig

ssh: .ssh/config

vim: .config/vim
	@git submodule init
	@git submodule update --merge --remote

.PHONY: all bash git ssh vim
