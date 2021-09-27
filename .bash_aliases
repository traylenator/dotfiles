alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
for I in $HOME/.bashrc.d/*.sh
do
  source $I
done
