# dotfiles

This repository contains my dotfiles for some of the software I use.


## Deployment

Inspired by `stow` these dotfiles are deployed creating symlinks in the proper
paths, but instead of using `stow` I wrote a `Makefile` to deploy the files.

Although `stow` is a great tool, I don't want to keep the whole file structure
behind every directory. For example, in the case of vim the structure should be
the following:

```
vim/
  .config/
    vim/
      .vimrc
      ...
```

Besides that, my dotfiles are pretty simple and you only need to create some
symlinks to deploy them.

The `Makefile` provides the following targets:

`all`  
It will deploy all the dotfiles. (This is the default target)

`bash`  
It will deploy the bash related dotfiles.

`git`  
It will deploy the git related dotfiles.

`ssh`  
It will deploy the SSH related dotfiles.

`vim`  
It will deploy the vim related dotfiles and update the plugins via git modules.
