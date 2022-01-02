# Dotfiles for Steve

Dotfiles maintained for:
* fish
* mutt
* tmux
* vim
* weechat
* systemd user tmpfiles.d entries

## Bootstrap
To start syncing dotfiles to a new system
```
echo ".cfg" >> .gitignore
git clone --bare git@github.com:traylenator/dotfiles.git $HOME/.cfg
git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
```

Start a fresh shell so the configuration alias is live 

Start weechat and identify
* switch to freenode buffer and `/msg NickServ IDENTIFY ********`

Start vim and run:
* PluginInstall

Create some directories and maintain them
* systemctl enable --user --now systemd-tmpfiles-setup.service
* systemctl enable --user --now systemd-tmpfiles-clean.timer


## Inspiration
Method used is [atlassian one](https://www.atlassian.com/git/tutorials/dotfiles)

