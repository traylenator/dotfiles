# Dotfiles for Steve

Dotfiles maintained for:
* fish
* mutt
* tmux
* vim

## Bootstrap
To start syncing dotfiles to a new system
```
echo ".cfg" >> .gitignore
git clone --bare git@github.com:traylenator/dotfiles.git $HOME/.cfg
git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
```

and start a fresh shell so the configuration alias is live 

## Inspiration
Method used is https://www.atlassian.com/git/tutorials/dotfiles

