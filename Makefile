# Makefile for managing dotfiles

TARGET_DIR ?= $(HOME)

all: bash git ssh vim

.bashrc: bash/bashrc
	@ln -fs $(TARGET_DIR)/$^ $(CURDIR)/$@

.config/vim: vim
	@ln -fs $(TARGET_DIR)/$^ $(CURDIR)/$@

.gitconfig: git/gitconfig
	@ln -fs $(TARGET_DIR)/$^ $(CURDIR)/$@

.inputrc: shell/inputrc
	@ln -fs $(TARGET_DIR)/$^ $(CURDIR)/$@

.profile: shell/profile
	@ln -fs $(TARGET_DIR)/$^ $(CURDIR)/$@

.ssh/config: ssh/config
	@ln -fs $(TARGET_DIR)/$^ $(CURDIR)/$@

bash: .bashrc .inputrc .profile

git: .gitconfig

ssh: .ssh/config

vim: .config/vim
	@git submodule init
	@git submodule update --merge --remote

.PHONY: all bash git ssh vim
